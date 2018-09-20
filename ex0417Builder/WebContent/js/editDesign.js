//생성일 : 18.07.23
//작성자 : 박민정
//함수 기능 : 메뉴 클릭시 class 'on' 추가하여 이미지 변환
$('.tabs').click(function(){
	var $this = $(this);
	var tabId = $this.attr('id');
	var tabPanel = tabId.replace('tabs_', 'tab_');
	var selectedTab = tabPanel.replace('tab_','');

	$('.uitabs').hide();
	$('.tabs').removeClass('on');
	$this.addClass('on');

	$('#' + tabPanel).show();
	$('#now_section').val(selectedTab);

	if(tabId === 'tabs_basicinfo' ||
	   tabId === 'tabs_basicinfo2' ||
	   tabId === 'tabs_basicinfo3') {
		maps_initialize()
	}
	//move_pop_preview(selectedTab);
});

//생성일 : 18.07.28
//작성자 : 박민정
//함수 기능 : 컬러선택 
var colorPicker = function () {

	var config = {
		baseColors: [
		[46, 204, 113],
		[52, 152, 219],
		[155, 89, 182],
		[52, 73, 94],
		[241, 196, 15],
		[230, 126, 34],
		[231, 76, 60]],

		lightModifier: 20,
		darkModifier: 0,
		transitionDuration: 200,
		transitionDelay: 25,
		variationTotal: 10 };


	var state = {
		activeColor: [0, 0, 0] };


	function init() {
		createColorPicker(function () {
			appendBaseColors();
		});

		addEventListeners();

		setFirstColorActive(function () {
			setFirstModifiedColorActive();
		});
	}

	function setActiveBaseColor(el) {
		$('.color.active').removeClass('active');
		el.addClass('active');
	}

	function setActiveColor(el) {
		$('.color-var.active').removeClass('active');
		el.addClass('active');
		state.activeColor = el.data('color').split(',');
	}

	function addEventListeners() {
		$('body').on('click', '.color', function () {
			var color = $(this).data('color').split(',');
			setActiveBaseColor($(this));

			hideVariations(function () {
				createVariations(color, function () {
					setDelays(function () {
						showVariations();
					});
				});
			});
		});

		$('body').on('click', '.color-var', function () {
			console.log('color-var');
			setActiveColor($(this));
			setBackgroundColor();
		});
	}

	function setFirstColorActive(callback) {
		$('.color').eq(1).trigger('click');
		callback();
	}

	function setFirstModifiedColorActive() {
		setTimeout(function () {
			$('.color-var').eq(7).trigger('click');
		}, 500);
	}

	function createColorPicker(callback) {
		$('.color-picker').append('<div class="base-colors"></div>');
		$('.color-picker').append('<div class="varied-colors"></div>');
		$('.color-picker').append('<div class="active-color"></div>');
		$('.color-picker').append('<div class="color-history"></div>');

		callback();
	}

	function appendBaseColors() {
		for (i = 0; i < config.baseColors.length; i++) {if (window.CP.shouldStopExecution(0)) break;
			$('.base-colors').append('<div class="color" data-color="' + config.baseColors[i].join() + '" style="background-color: rgb(' + config.baseColors[i].join() + ');"></div>');
		}window.CP.exitedLoop(0);
	};

	function setBackgroundColor() {
		console.log('bgColor');
		var section = $('#preview_iframe').contents().find('.skin-top-title');
		section.css({
			'color': 'rgb(' + state.activeColor + ')' });
		// input 변경
		$("input[name='top-font-color']").val('rgb(' + state.activeColor + ')');
	}

	function createVariations(color, callback) {
		$('.varied-colors').html('');
		
		if(color[0] == 52 && color[1] == 73 && color[2] == 94){
			for (var i = 0; i < config.variationTotal; i++) {if (window.CP.shouldStopExecution(1)) break;
				var newColor = [];
				// 흰색 팔레트
				if(i == config.variationTotal-1) {
					modifiedColor = [245,245,245];
					newColor.push(modifiedColor);
				}else {
					for (var x = 0; x < color.length; x++) {if (window.CP.shouldStopExecution(2)) break;
						var modifiedColor = Number(color[x]) - 100 + config.lightModifier * i;
	
						if (modifiedColor <= 0) {
							modifiedColor = 0;
						} else if (modifiedColor >= 255) {
							modifiedColor = 255;
						}
	
						newColor.push(modifiedColor);
					}window.CP.exitedLoop(2);
				}
				$('.varied-colors').append('<div data-color="' + newColor + '" class="color-var" style="background-color: rgb(' + newColor + ');"></div>');
			}window.CP.exitedLoop(1);
			
		}else {
			for (var i = 0; i < config.variationTotal; i++) {if (window.CP.shouldStopExecution(1)) break;
				var newColor = [];
	
				for (var x = 0; x < color.length; x++) {if (window.CP.shouldStopExecution(2)) break;
					var modifiedColor = Number(color[x]) - 100 + config.lightModifier * i;
	
					if (modifiedColor <= 0) {
						modifiedColor = 0;
					} else if (modifiedColor >= 255) {
						modifiedColor = 255;
					}
	
					newColor.push(modifiedColor);
				}window.CP.exitedLoop(2);
	
				$('.varied-colors').append('<div data-color="' + newColor + '" class="color-var" style="background-color: rgb(' + newColor + ');"></div>');
			}window.CP.exitedLoop(1);
		}

		callback();
	}

	function setDelays(callback) {
		$('.color-var').each(function (x) {
			$(this).css({
				'transition': 'transform ' + config.transitionDuration / 1000 + 's ' + config.transitionDelay / 1000 * x + 's' });

		});

		callback();
	}

	function showVariations() {
		setTimeout(function () {
			$('.color-var').addClass('visible');
		}, config.transitionDelay * config.variationTotal);
	}

	function hideVariations(callback) {
		$('.color-var').removeClass('visible').removeClass('active');

		setTimeout(function () {
			callback();
		}, config.transitionDelay * config.variationTotal);
	}

	return {
		init: init };


}();

colorPicker.init();

//add active class on menu
$('.sub-tab-top-name').click(function(e) {
	e.preventDefault();
	$('.sub-tab-top-name').removeClass('sub-tab-active');
	$(this).addClass('sub-tab-active');
});

/*iframe 접근*/
/*function getSectionTopTitle() {
	var section = $('#preview_iframe').contents().find('#calendar').html(); /*.show();*//*
	return section;
}
function topTitleUpdate(val, section) {
	ShowFunc(val, section);
}

$(document).ready(function() {
	/* a요소를 클릭 했을 시 *//*
	    $('#tabs_2').click(function(){
	/* iframe 요소의 src 속성값을 a 요소의 data-url 속성값으로 변경 */ 
/*$('#preview_iframe').attr('href',$(this).attr('#calendar'));
	        })
	});*/



/*설문조사*/
/**
 *  !TODO
 *     0)  add indicators for editable text
 *     1)  refactor/neaten codebase
 *     2)  move to angular
 *     3)  add event watcher for $canvas change
 *            - attach save to that watcher
 *     4)  add preview
 */
$(document).ready(() => {
    const $surveyComponent = $('#survey-components li');
    const $canvas = $('#survey-canvas');
    let $placeholder = $('<p>Drag survey components here<br/>or click to add</p>').addClass('placeholder');
    
    function saveSurvey () {
      const $saveBtn = $('#save-status');
      if ($saveBtn.hasClass('btn-warning')) {
        $saveBtn.html('<i class="fa fa-check-circle"></i> Saved!');
        $saveBtn.removeClass('btn-warning').addClass('btn-success');
      }
    }
    
    function unsaveSurvey () {
      const $saveBtn = $('#save-status');
      if ($saveBtn.hasClass('btn-success')) {
        $saveBtn.html('<i class="fa fa-exclamation-circle"></i> Not Saved');
        $saveBtn.removeClass('btn-success').addClass('btn-warning');
      }
    }
    
    $('#save-status').click(function (e) {
      saveSurvey();
      // save every 30 seconds
      setInterval(saveSurvey, 30000);
    });
    
    $canvas.html($placeholder);
    function makeSurveyComponent(componentType) {
    	console.log(componentType);
      let $component = $('<li></li>');
      const $x = $('<span></span>').addClass('x').text('×');
      let $header = $('<h4></h4>')
        .text(componentType)
        .append
          ($('<span></span>').addClass('x').text('×')
        );
      let $container = $('<div></div>').addClass('question-container'), 
          $question, $inputElement;
      
      $component.append($header);
      
      let random;
      switch (componentType) {
        case ('Textbox'):
          $question = $('<label></label>')
            .addClass('default-text')
            .text('Textbox question')
            .attr('contenteditable', 'true');
          $inputElement = $('<input />').addClass('form-control');
          console.log($inputElement);
          break;
        case('Text Area'):
          $question = $('<label></label>')
            .addClass('default-text')
            .text('Text area question')
            .attr('contenteditable', 'true');
          $inputElement = $('<textarea />').addClass('form-control');
          console.log($inputElement);
          break;
        case('Checkboxes'):
          random = Math.floor(Math.random() * 100);
          $question = $('<label></label>')
            .addClass('default-text')
            .text('Checkbox question')
            .attr('contenteditable', 'true');
          $inputElement = $('<div></div>').addClass('survey-checkbox')
            .append(`<input type="checkbox" name="q-${random}" value="1"> <span contenteditable=true>Option 1</span><br>`)
            .append(`<input type="checkbox" name="q-${random}" value="2"> <span contenteditable=true>Option 2</span><br>`)
            .append(`<input type="checkbox" name="q-${random}" value="3"> <span contenteditable=true>Option 3</span><br>`);
          break;
        case('Radio Buttons'):
          random = Math.floor(Math.random() * 100);
          $question = $('<label></label>')
            .addClass('default-text')
            .text('Radio button question')
            .attr('contenteditable', 'true');
          $inputElement = $('<div></div>').addClass('survey-radio')
            .append(`<input type="radio" name="q-${random}" value="1"> <span contenteditable=true>Option 1</span><br>`)
            .append(`<input type="radio" name="q-${random}" value="2"> <span contenteditable=true>Option 2</span><br>`)
            .append(`<input type="radio" name="q-${random}" value="3"> <span contenteditable=true>Option 3</span><br>`);
          break;
        case('Select Box'):
          $question = $('<p></p>')
            .addClass('default-text')
            .text('Select box question')
            .attr('contenteditable', 'true');
          $inputElement = $('<select></select>').addClass('survey-select')
            .append(`<option value="1">Option 1</option>`)
            .append(`<option value="2">Option 2</option>`)
            .append(`<option value="3">Option 3</option>`)
          break;
        case('Button'):
          let $button = $('<button></button>').addClass('btn btn-default btn-lg btn-block').text('Submit');
          $component.append($button);
          break;
        case('Heading'):
          $question = $('<h3>Large Heading</h3>')
              .addClass('default-text')
              .attr('contenteditable', 'true');
          break;
        case('Text'):
          $question = (
            $('<div></div>')
              .attr('contenteditable', 'true')
              .text('Fusce et ultricies neque. Vestibulum eu vehicula augue. In a molestie elit. Ut massa mi, lobortis volutpat orci id, tempor ornare sapien. Maecenas sapien nunc, iaculis id odio in, elementum maximus erat. Curabitur nec metus eget tortor luctus scelerisque.')
          );
          break;
        case('Horizontal Line'):
          $component.append('<hr class="divider"/>');
          break;
        case('New Page'):
          $component.append('<div class="new-page">New Page</div><hr/>');
          break;
      }
      
      $container.append($question).append($inputElement);
      $component.append($container);
      return $component;
    }
    
    $('#reset').click(() => {
      $canvas.html($placeholder);
      unsaveSurvey();
    });
    
    $surveyComponent.click(function (e) {
      $canvas.find( ".placeholder" ).remove();
          makeSurveyComponent( $(this).text() )
            .appendTo( $canvas );
          console.log($(this).text());
      
      const $x = $('.x'); // DRY 0
      $x.click(function (e) {
        const $component = $( this ).parent().parent();
        $component.remove();
        const $container = $('.survey-canvas');
        if ($container.children('li').length === 0) {
          $container.append($placeholder);
        }
        unsaveSurvey();
      });
      unsaveSurvey();
    });

    $surveyComponent.draggable({
      appendTo: "body",
      helper: "clone",
      cursorAt: { top: 15, left: 15, },
      /*start: (e, ui) => $(ui.helper).addClass('ui-state-dragging'),
      stop: (e, ui) => $(ui.helper).removeClass('ui-state-dragging'),*/
    });

    $canvas.droppable({
      activeClass: "ui-state-default",
      hoverClass: "ui-state-hover",
      accept: ":not(.ui-sortable-helper)",
      drop: function( event, ui ) {
          $( this ).find( ".placeholder" ).remove();
          makeSurveyComponent(ui.draggable.text())
            .appendTo( this );
        
        const $x = $('.x'); // DRY 0
        $x.click(function (e) {
          const $component = $( this ).parent().parent();
          $component.remove();
          const $container = $('.survey-canvas');
          if ($container.children('li').length === 0) {
            $container.append($placeholder);
          }
          unsaveSurvey();
        });
        unsaveSurvey();
        }
    }).sortable({
      items: "li:not(.placeholder)",
      cursorAt: { top: 20, left: 15, },
      handle: "h4",
      sort: function() {
        // gets added unintentionally by droppable interacting with sortable
        // using connectWithSortable fixes this, but doesn't allow you to customize active/hoverClass options
        $( this ).removeClass( "ui-state-default" );
      }
    });
  });
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body, html {
  height: 100%;
  font-size: 100%;
  line-height: 1.2;
}

.top-btn {
  margin-right: 0.5em;
}

.container {
  margin-top: 1em;
  background: #fff;
  //border: 1px solid #ccc;
}

.survey-elements {}
ul {
  list-style: none;
  padding: 0;
}
li {
  list-style: none;
  margin-left: 2em;
  margin-bottom: 0.5em;
  padding: 0.5em 1em;
  border: 1px solid #ccc;
  background: #eee;
  cursor: move;
  border-radius: 5px;
}

.survey-canvas {
  border: 3px dashed #eee;
  padding: 1em;
  list-style: none;
}

.survey-canvas li {
  border: 0;
  background: 0;
  padding: 0;
  margin: 0;
  margin-bottom: 2em;
  cursor: initial;
  
  h4 {
    margin-bottom: 0.5em;
    margin-left: 0;
    font-size: 1.2em;
    border: 1px solid #eee;
    padding: 0.5em 1em;
    border-radius: 5px;
    cursor: move;
    color: #ccc;
    font-weight: 300;
    text-transform: uppercase;
    font-size: 0.8em;
    letter-spacing: 2px;
    
    &::before {
      content: '::';
      color: #eee;
      margin-right: 0.5em;
    }
  }
  
  .x {
      float: right;
      cursor: pointer;
      color: #eee;
      margin-top: -0.3em;
      font-size: 1.8em;
      &:hover {
        color: red;
      }
    }
  
  .question-container {
    margin-left: 1em;
  }
}


.placeholder {
  font-size: 1.5em;
  color: #ccc;
  text-align: center;
  padding-top: 100px;
  padding-bottom: 100px;
  vertical-align: middle;
  letter-spacing: 1px;
}

.survey-textbox, .survey-textarea {
  display: block;
  width: 100%;
}

.new-page {
  text-align: center;
  color: #ccc;
  text-transform: uppercase;
  margin-bottom: -1em;
  letter-spacing: 1px;
  font-size: 90%;
}

.default-text { // TODO: do I want to edit the default class?
  background: none;
  border: none;
  // outline: none;
  padding: 0.2em;
  resize: none;
  i.fa-pencil {
      display: none;
      font-size: 0.6em;
      padding-left: 0.5em;
      vertical-align: middle;
      color: green;
    }
  &:hover {
    background: #eee;
    border-bottom: 1px dashed green;
    i.fa-pencil {
      display: inline;
    }
  }
}

.ui-state-default { border-color: lightblue; }
.ui-state-hover { border-color: lightgreen; }

footer {
  text-align: center;
  margin-top: 2em;
  margin-bottom: 1em;
  color: #ccc;
  letter-spacing: 2px;
}

hr.divider {
  padding: 0;
    border: none;
    border-top: medium double #333;
    color: #333;
    text-align: center;
  &:after {
    content: "§";
    display: inline-block;
    position: relative;
    top: -0.7em;
    font-size: 1.5em;
    padding: 0 0.25em;
    background: white;
  }
}
</style>
</head>
<body>
<div class="container" ng-app="SurveyBuilder">
  <h1>Survey Builder</h1>
  
  <div class="row">
    <button id="save-status" class="btn btn-warning pull-right"><i class="fa fa-exclamation-circle"></i> Click to Save Survey</button>
    
    <button id="preview" class="top-btn btn btn-default pull-right">Preview</button>
    
    <button id="publish" class="top-btn btn btn-default pull-right">Publish</button>
    <!-- left sidebar -->
    <div class="col-sm-4 survey-elements">
      <ul class="survey-components" id="survey-components">
        <h4>Basic Components</h4>
        <li>Textbox</li>
        <li>Text Area</li>
        <li>Checkboxes</li>
        <li>Radio Buttons</li>
        <li>Select Box</li>
        <!--<li>Button</li>-->
        
        <h4>Structure</h4>
        <li>Heading</li>
        <li>Text</li>
        <li>Horizontal Line</li>
        <li>New Page</li>
      </ul>
      <br/>
      <button id="reset" class="btn btn-default btn-block">Reset Survey</button>
      <br/>
    </div>
    <!-- right main canvas -->
    <div class="col-sm-8">
      <h2>
        <span="title" class="default-text" contenteditable="true">Your Survey</span> 
        <small contenteditable="false">created by you</small>
        <i class="fa fa-pencil"></i>
      </h2>
      <ul id="survey-canvas" class="survey-canvas">
      </ul>
      
      <button class="btn btn-default btn-lg btn-block">Submit</button>
    </div>
  </div>
</div>

<footer class="container"><hr/>&lt;/&gt; by leesharma</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
/**
 *  !TODO
 *     0)  add indicators for editable text
 *     1)  refactor/neaten codebase
 *     2)  move to angular
 *     3)  add event watcher for $canvas change
 *            - attach save to that watcher
 *     4)  add preview
 */

/* (function ($, angular) {
  var app = angular.module('SurveyBuilder', []);
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
            .attr('contenteditable', 'true');;
          $inputElement = $('<input />').addClass('form-control');
          break;
        case('Text Area'):
          $question = $('<label></label>')
            .addClass('default-text')
            .text('Text area question')
            .attr('contenteditable', 'true');
          $inputElement = $('<textarea />').addClass('form-control');
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

</script>
</body>
</html>
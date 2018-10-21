<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.Builder.dto.Content" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- meta tag -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!-- font awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
  <!-- custom CSS -->
  <link rel="stylesheet" href="css/edit.css">
<!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-jcrop/2.0.4/css/Jcrop.min.css"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/imgareaselect/0.9.10/css/imgareaselect-default.css">
  <title>초대해U 편집 페이지</title>
</head>
<body>
<form id="editForm" action="contentEditPro.do" method="POST" enctype="Multipart/form-data">

<!-- 사용자 정보 같이 보냄 -->
	<input type="hidden" name="url-id" value="${content.urlId}" class="urlId">
	<input type="hidden" name="user-id" value="${content.userId}" class="userId">
	<input type="hidden" name="url-name" value="${content.urlName}" class="urlName">
	<input type="hidden" name="type" value="${content.type}" class="type">
	<input type="hidden" name="pay-date" value="${content.payDate}" class="payDate">
	<input type="hidden" name="last-date" value="${content.lastDate}" class="lastDate">
	
  <div class="container-fluid">
    <header class="row justify-content-between border">
      <div class="d-flex align-items-center">
        <button type="button" class="btn btn-danger disabled p-1 m-1 header-btn">
	        <c:if test="${content.type == 1}">모임</c:if>
	        <c:if test="${content.type == 2}">발표회</c:if>
	        <c:if test="${content.type == 3}">종교 행사</c:if>
        </button>
        <button type="button" class="btn btn-info disabled p-1 m-1 header-btn">유료형</button>
        <div class="alert alert-secondary m-1 py-1 px-2 url-info" role="alert"><a target="_black" href="http://dbwlsdlqh12.cafe24.com/${content.urlName}.page">http://dbwlsdlqh12.cafe24.com/<strong>${content.urlName}.page</strong></a></div>
      </div>
      <div class="d-flex align-items-center">
        <a href="#" class="d-flex"><img src="./img/common/main_logo_2.png"  width="100" height="50" alt="logo"></a>
      </div>
      <div class="d-flex align-items-center">
        <div class="alert alert-light border py-1 px-2 mx-3 my-1 use-period" role="alert">서비스 종료일 : ${content.lastDate} [잔여일 : ${diffDays}일]</div> 
        <a href="index.do" class="d-flex align-items-center btn-exit">
                    <i class="fas fa-sign-out-alt fa-2x p-1"></i>
                    <span class="pr-2">나가기</span>
        </a>
      </div>
    </header>
    <section class="row position-fixed">
      <article class="position-fixed border ui-block">
        <div class="preview-wrap d-flex justify-content-center align-items-center position-relative">
          <img src="img/content/edit_img/page_img/preview_mobile.png" alt="preview-phone">
          <div class="position-absolute border privew_frame" id="preview_frame">
          	<iframe src="skin/${content.skin}/preview_index.jsp" width="100%" height="100%" frameborder="0" scroll="auto" id="preview_iframe">
          	</iframe>
          </div>
        </div>
      </article>
      <article id="tabs" class="position-fixed border edit-block d-flex">
        <div class="edit-block-tab">
        <!-- menu button list -->
          <ul class="p-0 pt-5">
            <li class="border"><a class="tab_m1" href="#tabs-1"><span id="tabs_1" class="tabs text-center"></span></a></li>
            <li class="border"><a class="tab_m2" href="#tabs-2"><span id="tabs_2" class="tabs text-center"></span></a></li>
            <li class="border"><a class="tab_m3" href="#tabs-3"><span id="tabs_3" class="tabs text-center"></span></a></li>
            <li class="border"><a class="tab_m4" href="#tabs-4"><span id="tabs_4" class="tabs text-center"></span></a></li>
            <li class="border"><a class="tab_m5" href="#tabs-5"><span id="tabs_5" class="tabs text-center"></span></a></li>
            <li class="border"><a class="tab_m6" href="#tabs-6"><span id="tabs_6" class="tabs text-center"></span></a></li>
          </ul>
          <!-- complete button -->
          <ul class="p-0">
            <li class="py-2">
          		<div> 
			      <button type="button" class="btn btn-sm reset-button m-0 gibson-two">초기화</button> 
			    </div>
			</li>
          	<li class="">
          		<div> 
          		  <button type="submit" class="btn btn-sm submit-button m-0 victoria-one">완료</button>
			    </div>
          	</li>
          </ul>
        </div>
        <div class="edit-block-content">
          <div class="edit-block-content-box">
            <!-- 1 스킨 선택 -->
            <div id="tabs-1" class="tab-section">
              <div id="sub-tabs-1" class="border">
                <div class="sub-tab-top border">
                  <ul class="border p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="mr-1"><a href="#tabs-1-1" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>발표회</span></a></li>
                    <li class=""><a href="#tabs-1-2" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>기타</span></a></li>
                  </ul>
                </div>
                <!-- 1 스킨 선택 - 하위 탭 -->
                <div class="sub-tab-section border mb-5">
                  <!-- 하위 탭 1-1 -->
                  <div class="form cf" id="tabs-1-1">
                    <ul class="d-flex flex-wrap p-0 pt-2 plan cf">
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <label class="skin1 overlay" for="skin1">
                                 <h2>skin1</h2>
                                 <input class="skin-btn" type="radio" name="skin" id="skin1" value="skin1" ${content.skin == 'skin1' ? 'checked' : ""} checked>
                                 <label class="free-label four col info" for="skin1"><p class="info" href="#" >적용하기</p></label>       
                              </label>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <label class="skin2 overlay" for="skin2">
                                 <h2>skin2</h2>
				                 <input class="skin-btn" type="radio" name="skin" id="skin2" value="skin2" ${content.skin == 'skin2' ? 'checked' : ""}>
				                 <label class="basic-label four col info" for="skin2"><p class="info" href="#" >적용하기</p></label> 
				              </label>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <label class="skin3 overlay" for="skin3">
                                 <h2>skin3</h2>
                                 <input class="skin-btn" type="radio" name="skin" id="skin3" value="skin3" ${content.skin == 'skin3' ? 'checked' : ""}>
                                 <label class="premium-label four col info" for="skin3"><p class="info" href="#" >적용하기</p></label>
                              </label>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <label class="skin4 overlay" for="skin4">
                                 <h2>skin4</h2>
                                 <input class="skin-btn" type="radio" name="skin" id="skin4" value="skin4" ${content.skin == 'skin4' ? 'checked' : ""}>
                                 <label class="premium-label four col info" for="skin4"><p class="info" href="#" >적용하기</p></label>
                              </label>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                  <!-- 하위 탭 1-2 -->
                  <div id="tabs-1-2">
                    <ul class="d-flex flex-wrap p-0 pt-2">
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <div class="overlay">
                                 <h2>Hover effect 1v2</h2>
                                 <a class="info" href="#">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <div class="overlay">
                                 <h2>Hover effect 1v2</h2>
                                 <a class="info" href="#">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <div class="overlay">
                                 <h2>Hover effect 1v2</h2>
                                 <a class="info" href="#">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/200x200" alt="">
                              <div class="overlay">
                                 <h2>Hover effect 1v2</h2>
                                 <a class="info" href="#">적용하기</a>
                              </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <!-- 2 상단 정보 -->
            <div id="tabs-2">
              <div id="sub-tabs-2" class="border">
                <div class="sub-tab-top border">
                  <ul class="pl-2 d-flex h-100">
                    <li class="d-flex align-items-center px-2" style="color:white; background-color:#444; border-bottom:3px solid #f05228;">상단 정보</li>
                  </ul>
                </div>
                <!-- 2 상단 선택 - 하위 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 2-0 -->
                  <div id="tabs-2-0">
                    <div class="tabs-2-0-topTitle px-2 pb-3 border">
                      <h3 class="section-title">초대장 제목</h3>
                      <div class="section-content">
                        <input type="text" class="form-control" name="top-title" value="${content.topTitle}">
                      </div>
                    </div>
                    <div class="tabs-2-0-topFontColor px-2 pb-3 border">
                      <h3 class="section-title">제목 색상</h3>
                      <div class="section-content pb-2">
	                      <div class="color-picker"></div>
	                      <input type="hidden" name="top-font-color">
					  </div>
                    </div>
                    <div class="tabs-2-0-topFontAlign px-2 pb-3 border">
                      <h3 class="section-title">제목 정렬</h3>
                      <div class="section-content" style="margin-bottom:25px; margin-top:-20px;">
                        <div class="form-check form-check-inline pr-3">
                          <input class="name-position topFontAlign" type="radio" name="top-font-align"
                            id="top-font-align-01" value="left"
                            ${content.topFontAlign == 'left' ? 'checked' : ""}>
                            <div class="name-position-box">
								<a class="tooltips">
							  		<label class="name-position-check text-center" for="top-font-align-01"><i class="fas fa-align-left text-white mt-2"></i></label>
							  		<span class="array">좌측기준정렬</span>
							  	</a>
							</div>
                        </div>
                        <div class="form-check form-check-inline px-2">
                          <input class="name-position topFontAlign" type="radio" name="top-font-align"
                            id="top-font-align-02" value="center"
                            ${content.topFontAlign == 'center' ? 'checked' : ""}>
                            <div class="name-position-box">
							  <a class="tooltips">
								  <label class="name-position-check text-center" for="top-font-align-02"><i class="fas fa-align-justify text-white mt-2"></i></label>
								  <span class="array">중앙기준정렬</span>
							  </a>
							</div>
                        </div>
                        <div class="form-check form-check-inline px-3">
                          <input class="name-position topFontAlign" type="radio" name="top-font-align"
                            id="top-font-align-03" value="right"
                            ${content.topFontAlign == 'right' ? 'checked' : ""}>
                            <div class="name-position-box">
							 <a class="tooltips">
								 <label class="name-position-check text-center" for="top-font-align-03"><i class="fas fa-align-right text-white mt-2"></i></label>
								 <span class="array">우측기준정렬</span>
							 </a>
							</div>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-2-0-topImg px-2 pb-3 border">
                      <h3 class="section-title">상단 이미지</h3>
                      <div class="section-content">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" class="topImgFile" id="top-img-file" name="top-img-file">
                          <input type="hidden" name="top-img-file-list" value="${content.topImgFile}">
                          <label class="custom-file-label" for="top-img-file">${content.topImgFile == "" ? "상단 이미지 선택" : content.topImgFile}</label>
                        </div>
                        <div class="top-img-preview-wrap">
                        	<img src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/topImgFile/${content.topImgFile}" class="top-img-preview" alt="상단 이미지 미리보기" height="150">
                        </div>
                      </div>
                    </div>
                    <div class="tabs-2-0-topImgAlign px-2 pb-3 border">
                      <h3 class="section-title">상단 이미지 배치 방식</h3>
                      <div class="section-content d-flex">
                        <div class="edit-top-img-layout form-check form-check-inline">
                			<input class="edit-top-img-layout-input topImgAlign" type="radio" name="top-img-align"
                						id="top-img-align-row" value="row"
                						${content.topImgAlign == 'row' ? 'checked' : ""} checked>
                				<label class="py-3 label-test align-self-center justify-content-center mr-2" style="background-color:#f2f2f2;" for="top-img-align-row">
									<a class="tooltips">
										<img src="img/content/edit_img/page_img/horizontal.png" width="115px;" height="80px;">
										<span class="img-place">가로사진인 경우</span>
									</a>
								</label>
                		</div>
               			<div class="edit-top-img-layout form-check form-check-inline">
            				<input class="edit-top-img-layout-input topImgAlign" type="radio" name="top-img-align"
            						id="top-img-align-col" value="col"
            						${content.topImgAlign == 'col' ? 'checked' : ""}>
            					<label class="px-3 label-test align-self-center justify-content-center" style="background-color:#f2f2f2;" for="top-img-align-col">
									<a class="tooltips">
										<img src="img/content/edit_img/page_img/vertical.png" width="80px;" height="115px;">
										<span class="img-place">세로사진인 경우</span>
									</a>
								</label>
               			</div>
                      </div>
                      <p class="sub_txt tip mt-2" style="font-size:12px;">가로형 사진은 가로정렬(좌측/가운데/우측)정렬만 세로형 사진은 세로정렬(상단/가운데/하단)정렬만 적용됩니다.</p>
                    </div>
                    <div class="px-2 pb-3 border">
                      <h3 class="section-title">상단 이미지 배치 연습</h3>
                      <div class="section-content">
                        <div class="border top-img-preview-crop-wrap">
	                    	<img style="height:300px" id="ferret" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPDw8PDw8PDw8NDQ0NDw0PDw8PDw8PFREWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFQ8PGC0dFR0tLSsrLS0tKy0tKy0tLTctLS4tLS0rKy0tListOC0tKy0rKy0rOC0tLjcrLSsrLTgrNP/AABEIARMAtwMBIgACEQEDEQH/xAAbAAADAQEBAQEAAAAAAAAAAAAAAQMCBAUGB//EADQQAAICAQEECQMDBAMBAAAAAAABAhESAyFRYZEEExQxQXGh0fBSgZIFsfEiYqLBMnLhBv/EABgBAQEBAQEAAAAAAAAAAAAAAAABAgME/8QAIREBAQEBAAICAgMBAAAAAAAAABEBEgIhQVETYQMxMiL/2gAMAwEAAhEDEQA/AP2QAAMgAGKEMAAaAQwosAERTAQwGAgCmAgAYAAqAYgFAMAFIAABSMAAJkPQA0FCryyA2C2irwQGqFQqc6QDxFQqAAoKAYAAUAAwEAwAQwAAGIYAAARYmMQBmNNiTCxBvo0wTEBTrWrHZix2SJWrHZix2SLWqChWGQPQAeQmwhAMC1CGAAAAAAAAAwAAPOXTPA6I9IT8UcUeiVxZJdGa22dufHWs/k35ep1qGtRM85aM33sa6O/qJxn2vefT0bQWcsIcdpSKM8l8VgMIZGdjQzIWRGgFYWFjQGQB6aAQAhjM2BCNAJMZV5MBWASGAgIR5c5z4ij0h+L9C/2Jas2u6J3z2wtpaifiU2bzze0ST7q+xWGrJ/wN8Gs3HajSOaGr9hz6RXgZ3x09OoLOLtnA0ulonGtZmOxBRxS6WjPbo7xxrc8XoUFHnS6fHeEf1GO8fj1P+ft6LCzjj05PuZRat+K5k535XPHFZalGH0ijm1dZGIakX3ujeeCb5Zjrj0mx6mrs47jGlpxfc7KvS2bNhnYvbl1OlOPfe0I9N3HQ9BOsttBLo68Fs3F6xnrRo6+RdM5o6Ti9iOlSM7Pgz20ArEZmtcpUFAMOcYwW4OrRsC3SJ9UtwdUigDrSJ9WtyE9L7fYqAukcHSOjN9yb5HI+gSavb5HtBRvP5dxOXzz6BPwTZuH6bN+FeZ7yiDia/NqcPGj+nTW7mbj0TUWzw4HrY8RpE/Lq54vLh0aXimzqh0SLXc157TqGZ3+TdXlDT6Ml4vy8DoQhmN3d/tYYWAEUwAABoQwFVEBAEjQCAqmAgBDAQAhjEBCGAACAAGCEMABAAAFgGAAgQ0wAEMBABz2OzFhZYRuwsxY7LCNWFmbCxFbsLMWOxBqx2YsLJBuwszYWIN2FmLHYhG7AxY7EVoZix2BqwszY7A1YGbHYGgM2Ag5LHZOwyNxFLDInkGRYqlhZPIMhBWwsnkGRIKWFk7HYgpYWTsLEFbCyeQWIKWOydhYiqWOydjsQUsLMWFkiqWFmLCxBSwMWAg4cgyJZBkdowrkGRLIMhBXIMiWQZCC2QZEsgyJFWyDIlkGQgtkFksgyEFsgyI5DyEFsgyI5DyEFsh5EMh5Eir5DUiGQZCFdGQ1I58h5DlavkMhkA5K8/MWRHIMjtHGrZBkSsMhFq2QZEbHYhVch5EbOees3NRjsincnv4CJvlHbDUtJ70n9mayObQl/TH/rH9jeRI1V8gyI5BkIVfIMiOQZCFXUgyIZGshCrZDUiGRpSJFq2Q8iOQ8hCqqQ8iWQ1IQquQErGIV5OYZnPYsjvHm6dXWB1hy5BkOTt1dYHWHNkLIcr27FqLelbS+72JGpwUKe+385nl9NlPq59VJR1Ek4Sfcmmnt2PduL6OnrRhGWtqrUb7qSSjv8Fd+XgcvL/UdM8c3w3z3yy58fLo0NX+leRTrDg0J7PJtepTI6cufbs6wMzkzHkOTt15hmcuYZjle3XmazOPMeZOTt15mlM41IeY5Xt2ZjzONTNKZOTt2dYNTONTNKY5Xt15iObMCcr24+yy+qPNi7LL6o+p0UuInXE6XXluIdkl9UebH2OW+PNlcVxEorj6i6XE+xy+qPNi7HL6o82VcVx9R4riLpcS7HLfH1ObW11op6WrKoRi9WGptcVFd97PBbOW87pbE3TfBd55P6tDU6Toa2hCD03qQcVqTxlFbV3x22qsm5urm5XR0KKm5xhqacpRlNSipXKLU2na71/wCnV2SW+PNnxv6H/wDHdK0tbT1NbpfWQhPOUF1ilPv8b2Xe3Z4vzPuft6kzy8mvLnN9e0OyS3x9fYfZJb4837FvsFPh6+5brNxLsk98eb9g7JPfHm/YvT+X7i2/P5F1biPZZ74837Guyz3x5v2N097+fc0k97F0uJ9knvjzfsPsk98eb9iqT3vmaV73zJ1pcRXRZ74837Gl0We+PNlknvfMaT3sdavpFdFnvjzfsa7LPfHm/Ysk/qfoaV/U/QnWr6c/ZZ7482B00/qfoBOtX08l63FC63yNgd/TzzWOt+ULreK5GxsXFmp9aNanH0NGkLiTUut+bBdZ8ouIXCamtUOt+UVTGmLn0vOpLV+UC1flMrYWS59HOpdb/FD6z5RWx2Ln0vOoPU+UNavnyZWxpi59JzqS1eD/ABZtanB/izcWaTJf0vOp9Zwf4s0tR7nyZtMdkv6XlhT4ejH1vB/iyiY7JTlN6j3Pkxm3IBf0vLz3ISkSchOR1jFWyBTJZCyEWrZjyI5DyEWquQKZK/P0Fl5iFWUwyIqXn6DyEFsh5EMhqRIK5jzJKQKQgrkCnwZLIMxB0KY1Igp7vc0n8WwkKtkNS4EL4/saUhFWjI0pkFI1kSLVswIOS4+oCHTzrMynXj+xPIMj0cuNUU9w8/lkVL5sDLgOSr5DUjmcvljyXAcldEmK+P22klOgcyQqyl5hlxIqQZCLV8hX8sipPeayESrXxDL53kMhuXkOVquXzaN6lbfchkOLHJV46qfczeZzqRpS4khVlM1mc6mazJytWUzeZzqXH9jSlxJFquQEnIBCvOy+UZcvm0xbBv8Ag9McKonxYXvI387zWRYVWwsjt8HXIw8t78/6RynX6dSY7OZ3/d/iZV3/AMp/4v8A0OTp1KXmGRGuN8hSb4cycr0u3v8A3Bsim67k/uY6yf0L8l7DlOnXkGRzdZPdH8n7G0+KvgOV6VsGuLXoSc63/baaT8+VCFxVcH85mm/L7oinx/Y0mZi3FcmPIlY7EKqpfKNKXzYQb8uTHF0SLdWepQyLmIc4vTivuMyYAdnPyOXcZ02IC/DF9q0SbACYuqQYnJgAMasTYARsZM1YAFOP+htABE0khtbAAM6Au9gAEEdJf3flL3NV8tgBVz+iyfoUQATSk2AAQuv/2Q==" width="100%" alt="It's coming right for us!" title="It's coming right for us!" style=" margin-right: 10px;">
							<div class="skin-top-img mt-5"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 3 상세 정보 -->
            <div id="tabs-3">
              <div id="sub-tabs-3" class="border">
                <div class="sub-tab-top border">
                  <ul class="p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="mr-1"><a href="#tabs-3-1" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>기본 정보</span></a></li>
                    <li class="mr-1"><a href="#tabs-3-2" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>부가 정보</span></a></li>
                    <li class=""><a href="#tabs-3-3" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>위치 정보</span></a></li>
                  </ul>
                </div>
                <!-- 3 상세 정보 - 하위 탭 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 탭 3-1 기본 정보 -->
                  <div id="tabs-3-1">
                    <div class="tabs-3-1-infoDateStart px-2 pb-3 border">
                      <h3 class="section-title">발표회 일자</h3>
                      <div class="section-content">
                        <!-- 행사 시작 날짜 -->
                        <input type="date" name="info-date-start" class="infoDateStart" value="${content.infoDateStart == '2000-01-01' ? '' : content.infoDateStart}">
                        <span> ~ </span>
                        <!-- 행사 종료 날짜 -->
                        <input type="date" name="info-date-end" class="infoDateEnd" value="${content.infoDateEnd == '2000-01-01' ? '' : content.infoDateEnd}">
                      </div>
                    </div>
                    <div class="tabs-3-1-infoDday px-2 pb-3 border">
                      <div class="card">
                        <div class="card-body p-2 d-flex justify-content-between align-items-center">
                          <span>D-DAY 사용 여부</span>
							<a class="tooltips">
		                        <input class="onoff-box ml-2" type="checkbox" id="toggle8" checked="checked" name="info-dday-chk"
		                         ${content.infoDdayChk == 1 ? 'checked' : ""}>
								<label class="onoff-button" for="toggle8">
								  <div class="onoff"></div>
								  <span class="onoff-tooltip">D-DAY 사용 ON/OFF</span>
								</label>
							</a>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-1-infoTime px-2 pb-3 border">
                      <h3 class="section-title">발표회 시간</h3>
                      <div class="section-content">
                        <!-- 행사 시간 -->
                        <input type="text" class="form-control infoTime" name="info-time" value="${content.infoTime == '' ? '' : content.infoTime}">
                      </div>
                    </div>
                    <div class="tabs-3-1-infoPlace px-2 pb-3 border">
                      <h3 class="section-title">발표회 장소</h3>
                      <div class="section-content">
                        <!-- 행사 장소 -->
                        <input type="text" class="form-control infoPlace" name="info-place" value="${content.infoPlace == '' ? '' : content.infoPlace}">
                      </div>
                    </div>
                  </div>
                  <!-- 하위 탭 3-2 부가 정보 -->
                  <div id="tabs-3-2">
                    <div class="tabs-3-2-addInfoWelcome px-2 pb-3 border">
                      <h3 class="section-title">인사말</h3>
                      <div class="section-content">
                        <!-- 인사말 -->
                        <textarea class="form-control textarea-welcome addInfoWelcome" name="add-info-welcome">${content.addInfoWelcome == '' ? '' : content.addInfoWelcome}</textarea>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoImgProfile px-2 pb-3 border">
                      <h3 class="section-title">발표자(팀) 프로필 입력</h3>
                      <div class="section-content">
                        <!-- 발표자(팀) 프로필 입력 -->
                        <input type="text" class="form-control mt-1 addInfoImgName" name="add-info-img-name" placeholder="발표자(팀) 이름">
                        <div class="custom-file mt-1">
                          <input type="file" class="custom-file-input addInfoImgProfile" id="add-info-img-profile" name="add-info-img-profile">
                          <input type="hidden" name="add-info-img-profile-list" value="${content.addInfoImgProfile}">
                          <label class="custom-file-label" for="add-info-img-profile">${content.addInfoImgProfile == "" ? "프로필 선택" : content.addInfoImgProfile}</label>
                        </div>
                        <div class="add-info-img-profile-preview-wrap">
                        	<img src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/addInfoImgProfile/${content.addInfoImgProfile}" class="add-info-img-profile-preview" height="150">
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoImgSit px-2 pb-3 border">
                      <h3 class="section-title">자리 배치도 이미지</h3>
                      <div class="section-content">
                        <!-- 자리 배치도 이미지 첨부 -->
                        <div class="custom-file mt-1">
                          <input type="file" class="custom-file-input addInfoImgSit" id="add-info-img-sit" name="add-info-img-sit">
                          <input type="hidden" name="add-info-img-sit-list" value="${content.addInfoImgSit}">
                          <label class="custom-file-label" for="add-info-img-sit">${content.addInfoImgSit == "" ? "자리 배치도 이미지 선택" : content.addInfoImgSit}</label>
                        </div>
                        <div class="add-info-img-sit-preview-wrap">
                        	<img src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/addInfoImgSit/${content.addInfoImgSit}" class="add-info-img-sit-preview" height="150">
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoCall px-2 pb-3 border">
                      <h3 class="section-title">문의 정보</h3>
                      <div class="section-content">
                        <!-- 문의 정보 입력 -->
                        <div class="form-row">
                          <div class="col">
                            <input type="text" class="form-control addInfoCallName" placeholder="주최자(기관) 이름" name="add-info-call-name" value="${content.addInfoCallName == '' ? '' : content.addInfoCallName}">
                          </div>
                          <div class="col">
                            <input type="text" class="form-control addInfoCallNumber" placeholder="전화번호" name="add-info-call-number" value="${content.addInfoCallNumber == '' ? '' : content.addInfoCallNumber}">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoLogo px-2 pb-3 border">
                      <h3 class="section-title">주최 기관 / 후원 이미지</h3>
                      <div class="section-content">
                        <!-- 주최 기관 / 후원 이미지 -->
                        <div class="form-row mb-1">
                          <div class="col">
                            <input type="text" class="form-control addInfoLogoHoldName" placeholder="주최사 명" name="add-info-logo-hold-name" value="${content.addInfoLogoHoldName == '' ? '' : content.addInfoLogoHoldName}">
                          </div>
                          <div class="col">
                            <div class="custom-file">
                              <input type="file" class="custom-file-input addInfoHoldImg" id="add-info-hold-img" name="add-info-hold-img">
                              <input type="hidden" name="add-info-hold-img-list" value="${content.addInfoHoldImg}">
                              <label class="custom-file-label" for="add-info-hold-img">${content.addInfoHoldImg == "" ? "주최 기관 로고 선택" : content.addInfoHoldImg}</label>
                            </div>
                          </div>
                          <div class="col">
	                        <div class="add-info-hold-img-preview-wrap">
	                        	<img src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/addInfoHoldImg/${content.addInfoHoldImg}" class="add-info-hold-img-preview" height="150">
	                        </div>
                          </div>
                        </div>
                        <div class="form-row mb-1">
                          <div class="col">
                            <input type="text" class="form-control addInfoLogoHelpName" placeholder="후원사 명" name="add-info-logo-help-name" value="${content.addInfoLogoHelpName == '' ? '' : content.addInfoLogoHelpName}">
                          </div>
                          <div class="col">
                            <div class="custom-file">
                              <input type="file" class="custom-file-input addInfoHelpImg" id="add-info-help-img" name="add-info-help-img">
                              <input type="hidden" name="add-info-help-img-list" value="${content.addInfoHelpImg}">
                              <label class="custom-file-label" for="add-info-help-img">${content.addInfoHelpImg == "" ? "후원 기관 로고 선택" : content.addInfoHelpImg}</label>
                            </div>
                          </div>
                          <div class="col">
	                        <div class="add-info-help-img-preview-wrap">
	                        	<img src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/addInfoHelpImg/${content.addInfoHelpImg}" class="add-info-help-img-preview" height="150">
	                        </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- 하위 탭 3-3 위치 정보 -->
                  <div id="tabs-3-3">
                    <div class="tabs-3-3-infoLoc px-2 pb-3 border">
                      <h3 class="section-title">발표회 장소 주소</h3>
                      <div class="section-content d-flex flex-column">
                        <div class="input-group mb-3">
                          <input id="info-address-text" type="text" class="form-control infoAddress" placeholder="발표회 장소 주소" name="info-address" value="${content.infoAddress == '' ? '' : content.infoAddress}">
                          <div class="input-group-append">
                            <button id="info-address-search" class="btn btn-info" name="info-address-btn" type="button">검색</button>
                          </div>
                        </div>
                        <div id="info-address-map" style="width:100%;height:300px;"></div>
                        <div id="skin-info-address-map" style="width:100%;height:300px; color:black;"></div>
                      </div>
                    </div>
                    <div class="tabs-3-3-infoNavi border">
                      <div class="card">
                        <div class="card-body p-2 d-flex justify-content-between align-items-center">
                          <span>내비게이션 연결 사용</span>
							<a class="tooltips">
		                        <input class="onoff-box infoNavi ml-2" type="checkbox" id="toggle9" checked="checked" name="info-navi" value="${content.infoNavi}"
									onclick="chkFuc('navi-chk', 'navi-chk-div')" ${content.infoNavi == 1 ? 'checked' : ""}>
								<label class="onoff-button" for="toggle9">
								  <div class="onoff"></div>
								  <span class="onoff-tooltip">네비연결 사용 ON/OFF</span>
								</label>
							</a>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-3-infoFind border">
                      <div class="card">
                        <div class="card-body p-2 d-flex justify-content-between align-items-center">
                          <span>길찾기 앱 바로가기 사용</span>
							<a class="tooltips">
		                        <input class="onoff-box infoFind ml-2" type="checkbox" id="toggle10" checked="checked" name="info-find" value="${content.infoFind}"
									onclick="chkFuc('find-chk', 'find-chk-div')" ${content.infoFind == 1 ? 'checked' : ""}>
								<label class="onoff-button" for="toggle10">
								  <div class="onoff"></div>
								  <span class="onoff-tooltip">길찾기앱 사용 ON/OFF</span>
								</label>
							</a>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-infoLoadImg px-2 pb-3 border">
                      <div class="d-flex justify-content-between align-items-center">
                        <h3 class="section-title">약도 이미지</h3>
						<a class="tooltips">
		                        <input class="onoff-box infoLoadImgchk ml-2" type="checkbox" id="toggle11" checked="checked" name="info-load-img-chk" value="${content.infoLoadImgChk}"
									onclick="chkFuc('info-load-img-chk', 'custom-file')" ${content.infoLoadImgChk == 1 ? 'checked' : ""}>
								<label class="onoff-button" for="toggle11">
								  <div class="onoff"></div>
								  <span class="onoff-tooltip">약도 사용 ON/OFF</span>
								</label>
							</a>
                      </div>
                      <div class="section-content info-load-section">
                        <!-- 약도 이미지 첨부 -->
                        <div class="custom-file mt-1">
                          <input type="file" class="custom-file-input infoLoadImg" id="info-load-img" name="info-load-img">
                          <input type="hidden" name="info-load-img-list" value="${content.infoLoadImg}">
                          <label class="custom-file-label" for="info-load-img">${content.infoLoadImg == "" ? "약도 이미지 선택" : content.infoLoadImg}</label>
                        </div>
                        <div class="info-load-img-preview-wrap">
                        	<img src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/infoLoadImg/${content.infoLoadImg}" class="info-load-img-preview" height="150">
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-3-infoTrans px-2 pb-3 border">
                      <h3 class="section-title">교통 정보</h3>
                      <div class="section-content">
                        <textarea class="form-control textarea-welcome my-3 infoBus" name="info-bus" placeholder="버스 교통 안내" style="resize: none;">${content.infoBus == '' ? '' : content.infoBus}</textarea>
                        <textarea class="form-control textarea-welcome my-3 infoSubway" name="info-subway" placeholder="지하철 교통 안내" style="resize: none;">${content.infoSubway == '' ? '' : content.infoSubway}</textarea>
                        <textarea class="form-control textarea-welcome my-3 infoParking" name="info-parking" placeholder="주차 안내" style="resize: none;">${content.infoParking == '' ? '' : content.infoParking}</textarea>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 4 멀티미디어 -->
            <div id="tabs-4">
              <div id="sub-tabs-4" class="border">
                <div class="sub-tab-top border">
                  <ul class="p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="mr-1"><a href="#tabs-4-1" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>갤러리</span></a></li>
                    <li class=""><a href="#tabs-4-2" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>동영상</span></a></li>
                  </ul>
                </div>
                <!-- 4 멀티미디어 - 하위 탭 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 탭 4-1 갤러리 -->
                  <div id="tabs-4-1">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <a class="tooltips">
						<input class="onoff-box" type="checkbox" id="toggle" class="ml-2" checked="checked" name="gallery-chk" 
							onclick="chkFuc('gallery-chk', 'gallery-chk-div')" ${content.galleryChk == 1 ? 'checked' : ""}/>
							<label class="onoff-button" for="toggle">
							  <div class="onoff"></div>
							  <span class="onoff-tooltip">갤러리 사용 ON/OFF</span>
							</label>
					  </a>
                    </div>
                    <div class="gallery-chk-div">
                      <div class="tabs-4-1-gallery-type px-2 pb-3 border">
                        <h3 class="section-title">갤러리 종류 선택</h3>
                        <div class="section-content">
                          <label id="basic" class="gallery-layout form-check-inline" for="gallery-type-row">
                          	<input class="gallery-layout-input" type="radio" name="gallery-type"
                              id="gallery-type-row" value="gallery-type-row" ${content.galleryType == 'gallery-type-row' ? 'checked' : ""} checked> 
                            <span class="gallery-layout-box">가로형</span>
                          </label>
                          <label id="circle" class="gallery-layout form-check-inline"  for="gallery-type-col">
                          	<input class="gallery-layout-input" type="radio" name="gallery-type"
                              id="gallery-type-col" value="gallery-type-col" ${content.galleryType == 'gallery-type-col' ? 'checked' : ""}> 
                            <span class="gallery-layout-box">세로형</span>
                          </label>
                          <label id="slide" class="gallery-layout form-check-inline" for="gallery-type-slide">
                          	<input class="gallery-layout-input" type="radio" name="gallery-type"
                              id="gallery-type-slide" value="gallery-type-slide" ${content.galleryType == 'gallery-type-slide' ? 'checked' : ""}> 
                            <span class="gallery-layout-box">슬라이드형</span>
                          </label>
                          <!-- 도움말 -->
                          <p class="sub_txt tip mt-2" style="font-size:14px; color:#656565;">
                              <i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
                              원하시는 갤러리 디자인 종류를 클릭하여 선택하시면 됩니다.
                          </p>
                      </div>
                      <div class="tabs-4-1-gallery-upload pb-3 border">
                        <h3 class="section-title">갤러리 사진 업로드</h3>
                        <div class="section-content">
                          <!-- gallery list -->
                          <input type="hidden" name="gallery-upload-img-list" value="${content.galleryUploadImg}">
                          <!-- gallery img input -->
                          <div class="custom-file mt-1">
                          	<input type="file" class="custom-file-input galleryUploadImg"name="gallery-upload-img-1" id="gallery-upload-img-1" />
                            <label class="custom-file-label" for="gallery-upload-img-1">${galleryUploadImgArr[0] == null ? "갤러리 사진 선택" : galleryUploadImgArr[0]}</label>
                          </div>
                          <div class="custom-file mt-1">
                          	<input type="file" class="custom-file-input galleryUploadImg"name="gallery-upload-img-2" id="gallery-upload-img-2" />
                            <label class="custom-file-label" for="gallery-upload-img-2">${galleryUploadImgArr[1] == null ? "갤러리 사진 선택" : galleryUploadImgArr[1]}</label>
                          </div>
                          <div class="custom-file mt-1">
                          	<input type="file" class="custom-file-input galleryUploadImg"name="gallery-upload-img-3" id="gallery-upload-img-3" />
                            <label class="custom-file-label" for="gallery-upload-img-3">${galleryUploadImgArr[2] == null ? "갤러리 사진 선택" : galleryUploadImgArr[2]}</label>
                          </div>
                          <div class="custom-file mt-1">
                          	<input type="file" class="custom-file-input galleryUploadImg"name="gallery-upload-img-4" id="gallery-upload-img-4" />
                            <label class="custom-file-label" for="gallery-upload-img-4">${galleryUploadImgArr[3] == null ? "갤러리 사진 선택" : galleryUploadImgArr[3]}</label>
                          </div>
                          <div class="custom-file mt-1">
                          	<input type="file" class="custom-file-input galleryUploadImg"name="gallery-upload-img-5" id="gallery-upload-img-5" />
                            <label class="custom-file-label" for="gallery-upload-img-5">${galleryUploadImgArr[4] == null ? "갤러리 사진 선택" : galleryUploadImgArr[4]}</label>
                          </div>
                          <div class="custom-file mt-1">
                          	<input type="file" class="custom-file-input galleryUploadImg"name="gallery-upload-img-6" id="gallery-upload-img-6" />
                            <label class="custom-file-label" for="gallery-upload-img-6">${galleryUploadImgArr[5] == null ? "갤러리 사진 선택" : galleryUploadImgArr[5]}</label>
                          </div>
                          
                        </div>
                        <div class="gallery-upload-img-preview-wrap">
                        	<c:forEach items="${galleryUploadImgArr}" var="gallery" varStatus="status">
                        		<img src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/galleryUploadImg/${gallery}" alt="${gallery}" class="gallery-upload-img-${status.count}" height="150">
                        	</c:forEach>
                        </div>
                      </div>
                    </div>
                  </div>
                 </div>
                  <!-- 하위 탭 4-2 동영상 -->
                  <div id="tabs-4-2">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                     	<a class="tooltips">
						<input class="onoff-box" type="checkbox" id="toggle2" class="ml-2" checked="checked" name="video-chk"
							onclick="chkFuc('video-chk', 'video-chk-div')" ${content.videoChk == 1 ? 'checked' : ""}/>
							<label class="onoff-button" for="toggle2">
							  <div class="onoff"></div>
							  <span class="onoff-tooltip">동영상 사용 ON/OFF</span>
							</label>
						</a>
                    </div>
                    <div class="video-chk-div">
                      <div class="tabs-4-1-video pb-3 border">
                        <h3 class="section-title">유튜브 공유 주소 입력</h3>
                        <div class="section-content">
	                      <div class="input-group mb-3">
	                        <input type="text" class="form-control videoLink" placeholder="유튜브 링크 주소" name="video-link" value="${content.videoLink == '' ? '' : content.videoLink}">
	                        <div class="input-group-append">
	                          <button class="btn btn-info" name="video-link-btn" type="button">완료</button>
	                        </div>
	                      </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 5 계좌 연동 -->
            <div id="tabs-5">
              <div id="sub-tabs-5" class="border">
                <div class="sub-tab-top border">
                  <ul class="pl-3 d-flex h-100">
                    <li class="d-flex align-items-center px-2" style="color:white; background-color:#444; border-bottom:3px solid #f05228;">계좌 연동</li>
                  </ul>
                </div>
                <!-- 5 계좌 연동 - 하위 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 5-0 -->
                  <div id="tabs-5-0">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <img src="img/content/edit_img/page_img/toss.jpg" width="50" alt="toss" style="margin-top:-10px" class="mr-1">
                      <a class="tooltips">
						<input class="onoff-box" type="checkbox" id="toggle3" class="ml-2 accountchk" checked="checked" name="account-chk" value="${content.accountChk}"
							onclick="chkFuc('account-chk', 'account-chk-div')" ${content.accountChk == 1 ? 'checked' : ""}/>
							<label class="onoff-button" for="toggle3">
							  <div class="onoff"></div>
							  <span class="onoff-tooltip">계좌연동 사용 ON/OFF</span>
							</label>
						</a>
                    </div>
                    <div class="account-chk-div">
                      <div class="tabs-5-0-account px-2 pb-3 border">
                        <h3 class="section-title">계좌 번호 선택</h3>
                        <div class="section-content">
                          <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <label class="input-group-text" for="inputGroupSelect01">계좌 선택</label>
                            </div>
                            <select class="custom-select" id="inputGroupSelect01" name="account-select" class="accountSelect">
                              <option value="no" ${content.accountSelect == 'no' ? 'selected' : ""}>계좌번호를 선택하세요</option>
                              <c:if test="${content.accountSelect ne 'no'}">
                              	<option value="${user.userAccount}" ${content.accountSelect != 'no' ? 'selected' : ""}>${user.userAccount}</option>
                              </c:if>
                            </select>
                          </div>
                          <div class="d-flex justify-content-end">
                            <button type="button" class="btn btn-info">다른계좌 등록하기</button>
                          </div>
                           
                          <!-- toss 연습 -->
                          <!--
                          <button type='button' onclick="tossButton()" class="btn btn-success">toss</button>
                          <div id="tossLink"></div>
                          -->
                          <!-- 계좌 인증 연습 -->
                          <!-- 
                          <input type="text" class="form-control" placeholder="예금주명" name="account-name">
                          <input type="text" class="form-control" placeholder="생년월일(6자리)" name="account-birth">
                          <input type="text" class="form-control" placeholder="계좌번호(-없이)" name="account-number">
                          <button type="button" class="btn btn-danger" onclick="accountCreate()">계좌 등록</button>
                            -->
                        </div>
                      </div>
                      <div class="tabs-5-0-money px-2 pb-3 border">
                        <h3 class="section-title">관람료</h3>
                        <div class="section-content">
                          <div class="col-6 p-0 d-flex align-items-center">
                            <input type="text" class="form-control accountMoney" placeholder="액수 입력" name="account-money" value="${content.accountMoney == '' ? '' : content.accountMoney}"><span class="mx-2">원</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 6 추가 기능 -->
            <div id="tabs-6">
              <div id="sub-tabs-6" class="border">
                <div class="sub-tab-top border">
                  <ul class="p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="mr-1"><a href="#tabs-6-1" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>참석 여부</span></a></li>
                    <li class="mr-1"><a href="#tabs-6-2" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>방명록</span></a></li>
                    <li class=""><a href="#tabs-6-3" class="sub-tab-top-name h-100 d-flex align-items-center text-center"><span>SNS 공유</span></a></li>
                  </ul>
                </div>
                <!-- 6 추가 기능 - 하위 탭 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 탭 6-1 참석 여부 -->
                  <div id="tabs-6-1">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                    	<a class="tooltips">
	                        <input class="onoff-box ml-2" type="checkbox" id="toggle12" checked="checked" name="attend-chk" value="${content.attendChk}"
								onclick="chkFuc('attend-chk', 'attend-chk-div')" ${content.attendChk == 1 ? 'checked' : ""}>
							<label class="onoff-button" for="toggle12">
							  <div class="onoff"></div>
							  <span class="onoff-tooltip">참석여부 사용 ON/OFF</span>
							</label>
						</a>
                    </div>
                    <div class="attend-chk-div">
						<div class="tabs-6-1-selectSNS px-2 pb-3 border">
	                        <h3 class="section-title">참석여부</h3>
	                        <div class="section-content">
	                        	<!-- 도움말 -->
		                     	<p class="sub_txt tip mt-2" style="font-size:14px; color:#656565;">
		                      		<i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
		                      		 초대받은 이의 행사 참석 여부를 알 수 있습니다.<br>
		                      		 <i class="fas fa-info-circle fa-lg mx-1" style="opacity:0;"></i>
		                      		 (성명과 비밀번호 입력 필수)<br>
		                      		 <i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
		                      		 통계결과는 사용자의 통계기능에서 확인하실 수 있습니다.
		                        </p>
		                        <img src="img/content/edit_img/page_img/attend-modal.jpg" width="200px;" height="200px;">
		                        <img src="img/content/edit_img/page_img/noattend-modal.jpg" width="200px;" height="240px;">
	                        </div>
						</div>
						
						<div class="tabs-6-1-selectPoll pb-3 border">
							<div class="p-2 d-flex justify-content-between align-items-center">
								<h3 class="section-title">설문조사</h3>
								<a class="tooltips">
				                    <input class="onoff-box pollChk ml-2" type="checkbox" id="toggle13" name="poll-chk" value="${content.pollChk}"
										onclick="chkFuc('poll-chk','poll-chk-div')" ${content.pollChk == 1 ? 'checked' : ""}>
									  <label class="onoff-button" for="toggle13">
									  	  <div class="onoff"></div>
										  <span class="onoff-tooltip">설문조사 ON/OFF</span>
									  </label>
								  </a>
							</div>
							<div class="section-content poll-chk-div">
	                        	<div class="form-control" style="border:none;">
	                        		<!-- 도움말 -->
			                     	<p class="sub_txt tip mt-2" style="font-size:14px; color:#656565;">
			                      		<i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
			                      		수신자에게 참석 여부를 표시할 수 있는 폼이 제공됩니다.
			                        </p>
		                       		<div class="row">
									    <!-- left sidebar -->
									  <div class="col-sm-4 survey-elements">
									      <ul class="survey-components text-center" id="survey-components">
									        <h5>형식</h5>
									        <!-- <li class="poll-form">단답형</li>-->
									        <li class="poll-form">텍스트</li>
									        <!-- <li class="poll-form">체크박스</li>-->
									        <li class="poll-form">라디오</li>
									      </ul>
									      <br>
									      <button id="reset" class="btn btn-default btn-block">초기화</button>
									      <br>
									   </div>
									    <!-- right main canvas -->
									   <div class="col-sm-8">
									      <h5>
									        <span class="default-text survey-title" contenteditable="true">설문조사</span> 
									        <i class="fa fa-pencil"></i>
									      </h5>
									      <ul id="survey-canvas" class="survey-canvas"></ul>
									      <input type="hidden" name="poll-content"> <!-- form 내용 들어갈 input -->
									      <input type="hidden" name="poll-update-chk" value="default"> <!-- 설문조사 수정할 경우 update 기존 값일 경우 default -->
									      <button type="button" class="btn btn-default btn-lg btn-block" onclick="surveySave()">완료</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
                  </div>
                  <!-- 하위 탭 6-2 방명록 -->
				  <div id="tabs-6-2">
				   <div class="d-flex justify-content-end align-items-center mb-3">
				     <a class="tooltips">
				        <input class="onoff-box commentChk ml-2" type="checkbox" id="toggle14" checked="checked" name="comment-chk" value="${content.commentChk}"
				            onclick="chkFuc('comment-chk', 'comment-chk-div')" ${content.commentChk == 1 ? 'checked' : ""}>
				          <label class="onoff-button" for="toggle14">
				                <div class="onoff"></div>
				              <span class="onoff-tooltip">방명록 사용 ON/OFF</span>
				          </label>
				      </a>
				   </div>
				   <div class="comment-chk-div">
			          <!-- 도움말 -->
			          <p class="sub_txt tip mt-2" style="font-size:14px; color:#656565;">
			              <i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
			              방명록을 쓸 수 있는 버튼과 방명록 내용이 추가 됩니다. <br>
			              <i class="fas fa-info-circle fa-lg mx-1" style="opacity:0;"></i>
			              ( 성함 / 비밀번호 4자리 / 내용 )<br>
			              <i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
			              방명록은 초대장에서 가입 없이 축하 글을 남길 수 있습니다.
		  	          </p>
			          <img src="img/content/edit_img/page_img/skin_comment_ex.png" width="200px;" height="320px;" style="border:1px solid rgb(217,217,217);">
			   	   </div>
				</div>
                  <!-- 하위 탭 6-3 SNS 공유 -->
                  <div id="tabs-6-3">
                    <div class="d-flex justify-content-end align-items-center mb-3">
					  <a class="tooltips">
	                    <input class="onoff-box snsShareChk ml-2" type="checkbox" id="toggle6" checked="checked" name="sns-share-chk"
							onclick="chkFuc('sns-share-chk', 'sns-share-chk-div')" ${content.snsShareChk == 1 ? 'checked' : ""}>
						  <label class="onoff-button" for="toggle6">
						  	  <div class="onoff"></div>
							  <span class="onoff-tooltip">sns공유 사용 ON/OFF</span>
						  </label>
					  </a>
                    </div>
                    <div class="sns-share-chk-div">
                      <div class="tabs-6-3-selectSNS px-2 pb-3 border">
                        <h3 class="section-title">SNS 공유 선택</h3>
                        <div class="section-content">
                        	<div class="p-0 d-flex align-items-center">
                          	  <!--공유 아이콘 -->
	                          <div class="form-check form-check-inline">
	                          	<input class="form-check-input selectSns select-sns" name="select-sns" type="checkbox" id="select-sns-01" value="select-sns-01"
	                              <c:forEach items="${selectSnsArr}" var="sns">
	                              	<c:if test="${sns eq 'select-sns-01'}">checked="checked"</c:if>
	                              </c:forEach>>
	                            <a class="tooltips">
	                            	<label class="sns-icon-box" style="background-image:url('img/content/edit_img/page_img/shard_icon/select-sns-01.png');" for="select-sns-01">
										<div class="sns-check-box">
											<div class="sns-check-label"></div>
										</div>
									</label> 
									<span class="sns-share-tooltip">카카오톡</span> 
								</a>
							  </div>
							  <div class="form-check form-check-inline">
								<input class="form-check-input selectSns select-sns" name="select-sns" type="checkbox" id="select-sns-02" value="select-sns-02"
	                              <c:forEach items="${selectSnsArr}" var="sns">
	                              	<c:if test="${sns eq 'select-sns-02'}">checked="checked"</c:if>
	                              </c:forEach>>
	                            <a class="tooltips">
		                            <label class="sns-icon-box" style="background-image:url('img/content/edit_img/page_img/shard_icon/select-sns-02.png');" for="select-sns-02">
										<div class="sns-check-box">
											<div class="sns-check-label"></div>
										</div>
									</label>  
									<span class="sns-share-tooltip">카카오스토리</span>
								</a>
							  </div>
							  <div class="form-check form-check-inline">
								<input class="form-check-input selectSns select-sns" name="select-sns" type="checkbox" id="select-sns-03" value="select-sns-03"
	                              <c:forEach items="${selectSnsArr}" var="sns">
	                              	<c:if test="${sns eq 'select-sns-03'}">checked="checked"</c:if>
	                              </c:forEach>>
	                            <a class="tooltips">
		                            <label class="sns-icon-box" style="background-image:url('img/content/edit_img/page_img/shard_icon/select-sns-03.png');" for="select-sns-03">
										<div class="sns-check-box">
											<div class="sns-check-label"></div>
										</div>
									</label>  
									<span class="sns-share-tooltip">네이버밴드</span>
								</a>
							  </div>
							  <div class="form-check form-check-inline">
								<input class="form-check-input selectSns select-sns" name="select-sns" type="checkbox" id="select-sns-04" value="select-sns-04"
	                              <c:forEach items="${selectSnsArr}" var="sns">
	                              	<c:if test="${sns eq 'select-sns-04'}">checked="checked"</c:if>
	                              </c:forEach>>
	                            <a class="tooltips">
		                            <label class="sns-icon-box" style="background-image:url('img/content/edit_img/page_img/shard_icon/select-sns-04.png');" for="select-sns-04">
										<div class="sns-check-box">
											<div class="sns-check-label"></div>
										</div>
									</label>  
									<span class="sns-share-tooltip">페이스북</span>
								</a>
							  </div>
                          </div>
                          <!-- 도움말 -->
                          <p class="sub_txt tip mt-2" style="font-size:14px; color:#656565;">
                              <i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
                              SNS공유 기능은 초대장을 카카오스토리, 밴드, 페이스북에 올려서 공유할 수 있으며 카카오톡은 친구들에게 초대장을 보낼 수 있습니다.
                          </p>
                        </div>
                      </div>
                      <div class="tabs-6-3-snsMSG pb-3 border">
                        <div class="p-2 d-flex justify-content-between align-items-center">
                        
                          <h3 class="section-title">카카오톡 공유 문구</h3>
                          <a class="tooltips">
		                    <input class="onoff-box snsMsgChk ml-2" type="checkbox" id="toggle7" checked="checked" name="sns-msg-chk"
								onclick="chkFuc('sns-msg-chk','textarea-content')" ${content.snsMsgChk == 1 ? 'checked' : ""}>
							  <label class="onoff-button" for="toggle7">
							  	  <div class="onoff"></div>
								  <span class="onoff-tooltip">공유 문구 ON/OFF</span>
							  </label>
						  </a>
                        </div>
                        <div class="section-content">
                          <!-- 카카오톡 공유 문구 삽입 -->
                          <textarea class="form-control textarea-content snsMsgContent" name="sns-msg-content" placeholder="<00대학교 00학부 제00회 음악 연주회>

  학생들의 음악 연주회에 초대합니다.
  바쁘시더라도 참석해주셔서 연주자의 아름다운 연주를 들으러 와주세요 :)

  일시 :
  장소 : ">${content.snsMsgContent == '' ? '' : content.snsMsgContent}</textarea>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </article>
    </section>
  </div>

</form>



  <!-- bootstrap javascript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
  <script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>
  
  <!-- outside javascript -->
  <!-- jquery-ui -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- jcrop js -->
<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-jcrop/2.0.4/js/Jcrop.min.js"></script> -->
  <!-- imgareaselect js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/imgareaselect/0.9.10/js/jquery.imgareaselect.min.js"></script>
  <!-- map js -->
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=28s_5H2hA1HcHCbdhEUr&submodules=geocoder&callback=CALLBACK_FUNCTION"></script>
  
  
  <!-- custom javsScript -->
  <script>
  /* surveyInit 변수 */
  pollContent = '${content.pollContent}';
  </script>
  <script src="js/editDesign.js?v=<%=System.currentTimeMillis() %>"></script>
  <script type="text/javascript" src="js/edit.js?v=<%=System.currentTimeMillis() %>"></script>
  <script type="text/javascript" src="js/editFunc.js?v=<%=System.currentTimeMillis() %>"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
    $( "#sub-tabs-1" ).tabs();
    $( "#sub-tabs-3" ).tabs();
    $( "#sub-tabs-4" ).tabs();
    $( "#sub-tabs-6" ).tabs();
  });
  </script>
</body>
</html>
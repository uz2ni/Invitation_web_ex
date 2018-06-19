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
  <link rel="stylesheet" href="css/edit.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!-- font awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">

  <title>초대해U 편집 페이지</title>
</head>
<body>
<form id="editForm" action="contentEditPro.do" method="POST" enctype="Multipart/form-data">

<!-- 사용자 정보 같이 보냄 -->
	<input type="hidden" name="url-id" value="${content.urlId}">
	<input type="hidden" name="user-id" value="${content.userId}">
	<input type="hidden" name="url-name" value="${content.urlName}">
	<input type="hidden" name="type" value="${content.type}">
	<input type="hidden" name="pay-date" value="${content.payDate}">
	<input type="hidden" name="last-date" value="${content.lastDate}">
	
  <div class="container-fluid">
    <header class="row justify-content-between border">
      <div class="d-flex align-items-center">
        <button type="button" class="btn btn-danger disabled p-1 m-1 header-btn">
	        <c:if test="${content.type == 1}">모임</c:if>
	        <c:if test="${content.type == 2}">발표회</c:if>
	        <c:if test="${content.type == 3}">종교 행사</c:if>
        </button>
        <button type="button" class="btn btn-info disabled p-1 m-1 header-btn">유료형</button>
        <div class="alert alert-secondary m-1 py-1 px-2 url-info" role="alert"><a href="#">http://webpage/<strong>${content.urlName}</strong></a></div>
      </div>
      <div class="d-flex">
        <a href="#" class="d-flex"><img src="http://via.placeholder.com/40x40"></a>
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
<!--           <%= request.getAttribute("content").toString() %> -->
          	<iframe src="skin/skin1/index.html" width="100%" height="100%" frameborder="0" scroll="auto" id="preview_iframe">
          	</iframe>
          </div>
        </div>
      </article>
      <article id="tabs" class="position-fixed bg-success border edit-block d-flex">
        <div class="edit-block-tab">
        <!-- menu button list -->
          <ul class="p-0 pt-5">
            <li class="border"><a href="#tabs-1"><span>스킨선택</span></a></li>
            <li class="border"><a href="#tabs-2"><span>상단정보</span></a></li>
            <li class="border"><a href="#tabs-3"><span>상세정보</span></a></li>
            <li class="border"><a href="#tabs-4"><span>멀티미디어</span></a></li>
            <li class="border"><a href="#tabs-5"><span>계좌연동</span></a></li>
            <li class="border"><a href="#tabs-6"><span>추가기능</span></a></li>
          </ul>
          <!-- complete button -->
          <ul class="p-0">
          	<li class="border"><button type="submit" class="btn btn-warning w-100">완료</button></li>
          </ul>
        </div>
        <div class="edit-block-content">
          <div class="edit-block-content-box">
            <!-- 1 스킨 선택 -->
            <div id="tabs-1" class="tab-section">
              <div id="sub-tabs-1" class="border">
                <div class="sub-tab-top border">
                  <ul class="border p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="border bg-white"><a href="#tabs-1-1" class="h-100 d-flex align-items-center text-center"><span>발표회</span></a></li>
                    <li class="border bg-white"><a href="#tabs-1-2" class="h-100 d-flex align-items-center text-center"><span>기타</span></a></li>
                  </ul>
                </div>
                <!-- 1 스킨 선택 - 하위 탭 -->
                <div class="sub-tab-section border mb-5">
                  <!-- 하위 탭 1-1 -->
                  <div id="tabs-1-1">
                    <ul class="d-flex flex-wrap p-0 pt-2">
                      <li class="col-6 p-2">
                        <input type="radio" name="skin" value="skin1" ${content.skin == 'skin1' ? 'checked' : ""}>
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/350x200" alt="">
                              <div class="overlay">
                                 <h2>skin1</h2>
                                 <a class="info" href="javascript:void(0);" onclick="selectSkin('skin', 'skin1'); return false;">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <input type="radio" name="skin" value="skin2" ${content.skin == 'skin2' ? 'checked' : ""}>
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/350x200" alt="">
                              <div class="overlay">
                                 <h2>skin2</h2>
                                 <a class="info" href="javascript:void(0);" onclick="selectSkin('skin', 'skin2'); return false;">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <input type="radio" name="skin" value="skin3" ${content.skin == 'skin3' ? 'checked' : ""}>
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/350x200" alt="">
                              <div class="overlay">
                                 <h2>skin3</h2>
                                 <a class="info" href="javascript:void(0);" onclick="selectSkin('skin', 'skin3'); return false;">적용하기</a>
                              </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <!-- 하위 탭 1-2 -->
                  <div id="tabs-1-2">
                    <ul class="d-flex flex-wrap p-0 pt-2">
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/350x200" alt="">
                              <div class="overlay">
                                 <h2>Hover effect 1v2</h2>
                                 <a class="info" href="#">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/350x200" alt="">
                              <div class="overlay">
                                 <h2>Hover effect 1v2</h2>
                                 <a class="info" href="#">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/350x200" alt="">
                              <div class="overlay">
                                 <h2>Hover effect 1v2</h2>
                                 <a class="info" href="#">적용하기</a>
                              </div>
                        </div>
                      </li>
                      <li class="col-6 p-2">
                        <div class="hovereffect rounded img-thumbnail">
                          <img class="img-responsive" src="http://placehold.it/350x200" alt="">
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
                  <ul class="border pl-3 d-flex h-100">
                    <li class="d-flex align-items-center">상단 정보</li>
                  </ul>
                </div>
                <!-- 2 상단 선택 - 하위 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 2-0 -->
                  <div id="tabs-2-0">
                    <div class="tabs-2-0-topTitle pb-3 border">
                      <h3 class="section-title">초대장 제목</h3>
                      <div class="section-content">
                        <input type="text" class="form-control" name="top-title" value="${content.topTitle}" >
                      </div>
                    </div>
                    <div class="tabs-2-0-topFontColor pb-3 border">
                      <h3 class="section-title">제목 색상</h3>
                      <div class="section-content">
                        <div class="form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-font-color"
                						id="top-font-color-01" value="white"
                						${content.topFontColor == 'white' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-font-color-01">흰색</label>
                				</div>
                				<div class="=form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-font-color"
                						id="top-font-color-02" value="pink"
                						${content.topFontColor == 'pink' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-font-color-02">핑크</label>
                				</div>
                				<div class="form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-font-color"
                						id="top-font-color-03" value="yellow"
                						${content.topFontColor == 'yellow' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-font-color-03">노랑</label>
                				</div>
                				<div class="form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-font-color"
                						id="top-font-color-04" value="green"
                						${content.topFontColor == 'green' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-font-color-04">초록</label>
                				</div>
                				<div class="form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-font-color"
                						id="top-font-color-05" value="blue"
                						${content.topFontColor == 'blue' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-font-color-05">파랑</label>
                				</div>
                				<div class="form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-font-color"
                						id="top-font-color-06" value="black"
                						${content.topFontColor == 'black' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-font-color-06">검정</label>
                				</div>
                      </div>
                    </div>
                    <div class="tabs-2-0-topFontAlign pb-3 border">
                      <h3 class="section-title">제목 정렬</h3>
                      <div class="section-content">
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="top-font-align"
                            id="top-font-align-01" value="left"
                            ${content.topFontAlign == 'left' ? 'checked' : ""}> <label
                            class="form-check-label" for="top-font-align-01">왼쪽</label>
                        </div>
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="top-font-align"
                            id="top-font-align-02" value="center"
                            ${content.topFontAlign == 'center' ? 'checked' : ""}> <label
                            class="form-check-label" for="top-font-align-02">가운데</label>
                        </div>
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="top-font-align"
                            id="top-font-align-03" value="right"
                            ${content.topFontAlign == 'right' ? 'checked' : ""}> <label
                            class="form-check-label" for="top-font-align-03">오른쪽</label>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-2-0-topImg pb-3 border">
                      <h3 class="section-title">상단 이미지</h3>
                      <div class="section-content">
                        <div class="custom-file">
                          <input type="hidden" name="top-img-file-str" id="top-img-file-str" value="${content.topImgFile}">
                          <input type="hidden" name="top-img-file-addr" id="top-img-file-addr" value="${uploadPath}">
                          <input type="file" class="custom-file-input" id="top-img-file" name="top-img-file" onchange="readURL(this);">
                          <label class="custom-file-label" for="top-img-file">선택</label>
                        </div>
                        <div class="top-img-preview-wrap">
                        	<img src="#" class="top-img-preview" alt="상단 이미지 미리보기" height="150">
                        </div>
                      </div>
                    </div>
                    <div class="tabs-2-0-topImgAlign pb-3 border">
                      <h3 class="section-title">상단 이미지 배치 방식</h3>
                      <div class="section-content">
                        <div class="form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-img-align"
                						id="top-img-align-row" value="row"
                						${content.topImgAlign == 'row' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-img-align-row">가로</label>
                				</div>
                				<div class="form-check form-check-inline">
                					<input class="form-check-input" type="radio" name="top-img-align"
                						id="top-img-align-col" value="col"
                						${content.topImgAlign == 'col' ? 'checked' : ""}> <label
                						class="form-check-label" for="top-img-align-col">세로</label>
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
                  <ul class="border p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="border bg-white"><a href="#tabs-3-1" class="h-100 d-flex align-items-center text-center"><span>기본 정보</span></a></li>
                    <li class="border bg-white"><a href="#tabs-3-2" class="h-100 d-flex align-items-center text-center"><span>부가 정보</span></a></li>
                    <li class="border bg-white"><a href="#tabs-3-3" class="h-100 d-flex align-items-center text-center"><span>위치 정보</span></a></li>
                  </ul>
                </div>
                <!-- 3 상세 정보 - 하위 탭 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 탭 3-1 기본 정보 -->
                  <div id="tabs-3-1">
                    <div class="tabs-3-1-infoDateStart pb-3 border">
                      <h3 class="section-title">발표회 일자</h3>
                      <div class="section-content">
                        <!-- 행사 시작 날짜 -->
                        <input type="date" name="info-date-start" value="${content.infoDateStart == '2000-01-01' ? '' : content.infoDateStart}">
                        <span> ~ </span>
                        <!-- 행사 종료 날짜 -->
                        <input type="date" name="info-date-end" value="${content.infoDateEnd == '2000-01-01' ? '' : content.infoDateEnd}">
                      </div>
                    </div>
                    <div class="tabs-3-1-infoDday pb-3 border">
                      <div class="card">
                        <div class="card-body p-2 d-flex justify-content-between align-items-center">
                          <span>D-DAY 사용 여부</span>
                          <input type="checkbox" name="info-dday-chk" ${content.infoDdayChk == 1 ? 'checked' : ""}>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-1-infoTime pb-3 border">
                      <h3 class="section-title">발표회 시간</h3>
                      <div class="section-content">
                        <!-- 행사 시간 -->
                        <input type="text" class="form-control" name="info-time" value="${content.infoTime == '' ? '' : content.infoTime}">
                      </div>
                    </div>
                    <div class="tabs-3-1-infoPlace pb-3 border">
                      <h3 class="section-title">발표회 장소</h3>
                      <div class="section-content">
                        <!-- 행사 장소 -->
                        <input type="text" class="form-control" name="info-place" value="${content.infoPlace == '' ? '' : content.infoPlace}">
                      </div>
                    </div>
                  </div>
                  <!-- 하위 탭 3-2 부가 정보 -->
                  <div id="tabs-3-2">
                    <div class="tabs-3-2-addInfoWelcome pb-3 border">
                      <h3 class="section-title">인사말</h3>
                      <div class="section-content">
                        <!-- 인사말 -->
                        <textarea class="form-control textarea-welcome" name="add-info-welcome">${content.addInfoWelcome == '' ? '' : content.addInfoWelcome}</textarea>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoImgProfile pb-3 border">
                      <h3 class="section-title">발표자(팀) 프로필 입력</h3>
                      <div class="section-content">
                        <!-- 발표자(팀) 프로필 입력 -->
                        <input type="text" class="form-control mt-1" name="add-info-img-name" placeholder="발표자(팀) 이름" value="${content.addInfoImgName == '' ? '' : content.addInfoImgName}">
                        <div class="custom-file mt-1">
                          <input type="file" class="custom-file-input" id="add-info-img-profile" name="add-info-img-profile">
                          <label class="custom-file-label" for="add-info-img-profile">발표자 프로필 선택</label>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoImgSit pb-3 border">
                      <h3 class="section-title">자리 배치도 이미지</h3>
                      <div class="section-content">
                        <!-- 자리 배치도 이미지 첨부 -->
                        <div class="custom-file mt-1">
                          <input type="file" class="custom-file-input" id="add-info-img-sit" name="add-info-img-sit" value="${content.addInfoImgSit == '' ? '' : content.addInfoImgSit}">
                          <label class="custom-file-label" for="add-info-img-sit">자리 배치도 이미지 선택</label>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoCall pb-3 border">
                      <h3 class="section-title">문의 정보</h3>
                      <div class="section-content">
                        <!-- 문의 정보 입력 -->
                        <div class="form-row">
                          <div class="col">
                            <input type="text" class="form-control" placeholder="주최자(기관) 이름" name="add-info-call-name" value="${content.addInfoCallName == '' ? '' : content.addInfoCallName}">
                          </div>
                          <div class="col">
                            <input type="text" class="form-control" placeholder="전화번호" name="add-info-call-number" value="${content.addInfoCallNumber == '' ? '' : content.addInfoCallNumber}">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-addInfoLogo pb-3 border">
                      <h3 class="section-title">주최 기관 / 후원 이미지</h3>
                      <div class="section-content">
                        <!-- 주최 기관 / 후원 이미지 -->
                        <div class="form-row mb-1">
                          <div class="col">
                            <input type="text" class="form-control" placeholder="주최사 명" name="add-info-logo-hold-name" value="${content.addInfoLogoHoldName == '' ? '' : content.addInfoLogoHoldName}">
                          </div>
                          <div class="col">
                            <div class="custom-file">
                              <input type="file" class="custom-file-input" id="add-info-hold-img" name="add-info-hold-img">
                              <label class="custom-file-label" for="add-info-hold-img">주최 기관 로고 선택</label>
                            </div>
                          </div>
                        </div>
                        <div class="form-row mb-1">
                          <div class="col">
                            <input type="text" class="form-control" placeholder="후원사 명" name="add-info-logo-help-name" value="${content.addInfoLogoHelpName == '' ? '' : content.addInfoLogoHelpName}">
                          </div>
                          <div class="col">
                            <div class="custom-file">
                              <input type="file" class="custom-file-input" id="add-info-help-img" name="add-info-help-img">
                              <label class="custom-file-label" for="add-info-help-img">후원 기관 로고 선택</label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- 하위 탭 3-3 위치 정보 -->
                  <div id="tabs-3-3">
                    <div class="tabs-3-3-infoLoc pb-3 border">
                      <h3 class="section-title">발표회 장소 주소</h3>
                      <div class="section-content d-flex flex-column">
                        <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="발표회 장소 주소" name="info-address" value="${content.infoAddress == '' ? '' : content.infoAddress}">
                          <div class="input-group-append">
                            <button class="btn btn-info" type="button">검색</button>
                          </div>
                        </div>
                        <img src="http://placehold.it/400x250" alt="지도" class="text-center">
                      </div>
                    </div>
                    <div class="tabs-3-3-infoNavi pb-3 border">
                      <div class="card">
                        <div class="card-body p-2 d-flex justify-content-between align-items-center">
                          <span>내비게이션 연결 사용</span>
                          <input type="checkbox" name="info-navi" ${content.infoNavi == 1 ? 'checked' : ""}>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-3-infoFind pb-3 border">
                      <div class="card">
                        <div class="card-body p-2 d-flex justify-content-between align-items-center">
                          <span>길찾기 앱 바로가기 사용</span>
                          <input type="checkbox" name="info-find" ${content.infoFind == 1 ? 'checked' : ""}>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-2-infoLoadImg pb-3 border">
                      <div class="p-2 d-flex justify-content-between align-items-center">
                        <h3 class="section-title">약도 이미지</h3>
                        <input type="checkbox" name="info-load-img-chk" checked="checked" onclick="chkFuc('info-load-img-chk', 'custom-file')" ${content.infoLoadImgChk == 1 ? 'checked' : ""}>
                      </div>
                      <div class="section-content">
                        <!-- 약도 이미지 첨부 -->
                        <div class="custom-file mt-1">
                          <input type="file" class="custom-file-input" id="info-load-img" name="info-load-img">
                          <label class="custom-file-label" for="info-load-img">약도 이미지 선택</label>
                        </div>
                      </div>
                    </div>
                    <div class="tabs-3-3-infoTrans pb-3 border">
                      <h3 class="section-title">교통 정보</h3>
                      <div class="section-content">
                        <textarea class="form-control textarea-welcome my-3" name="info-bus" placeholder="버스 교통 안내" style="resize: none;">${content.infoBus == '' ? '' : content.infoBus}</textarea>
                        <textarea class="form-control textarea-welcome my-3" name="info-subway" placeholder="지하철 교통 안내" style="resize: none;">${content.infoSubway == '' ? '' : content.infoSubway}</textarea>
                        <textarea class="form-control textarea-welcome my-3" name="info-parking" placeholder="주차 안내" style="resize: none;">${content.infoParking == '' ? '' : content.infoParking}</textarea>
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
                  <ul class="border p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="border bg-white"><a href="#tabs-4-1" class="h-100 d-flex align-items-center text-center"><span>갤러리</span></a></li>
                    <li class="border bg-white"><a href="#tabs-4-2" class="h-100 d-flex align-items-center text-center"><span>동영상</span></a></li>
                  </ul>
                </div>
                <!-- 4 멀티미디어 - 하위 탭 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 탭 4-1 갤러리 -->
                  <div id="tabs-4-1">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <span>갤러리 사용</span>
                      <input type="checkbox" class="ml-2" checked="checked" name="gallery-chk" onclick="chkFuc('gallery-chk', 'gallery-chk-div')" ${content.galleryChk == 1 ? 'checked' : ""}>
                    </div>
                    <div class="gallery-chk-div">
                      <div class="tabs-4-1-gallery-type pb-3 border">
                        <h3 class="section-title">갤러리 종류 선택</h3>
                        <div class="section-content">
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gallery-type"
                              id="gallery-type-basic" value="gallery-type-basic" ${content.galleryType == 'gallery-type-basic' ? 'checked' : ""}> <label
                              class="form-check-label" for="gallery-type-basic">기본형</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gallery-type"
                              id="gallery-type-circle" value="gallery-type-circle" ${content.galleryType == 'gallery-type-circle' ? 'checked' : ""}> <label
                              class="form-check-label" for="gallery-type-circle">원형</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gallery-type"
                              id="gallery-type-slide" value="gallery-type-slide" ${content.galleryType == 'gallery-type-slide' ? 'checked' : ""}> <label
                              class="form-check-label" for="gallery-type-slide">슬라이드형</label>
                          </div>
                        </div>
                      </div>
                      <div class="tabs-4-1-gallery-upload pb-3 border">
                        <h3 class="section-title">갤러리 사진 업로드</h3>
                        <div class="section-content">
                          <div class="custom-file mt-1">
                            <input type="file" class="custom-file-input" id="gallery-upload-img" name="gallery-upload-img">
                            <label class="custom-file-label" for="gallery-upload-img">갤러리 사진 선택</label>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- 하위 탭 4-2 동영상 -->
                  <div id="tabs-4-2">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <span>동영상 사용</span>
                      <input type="checkbox" class="ml-2" checked="checked" name="video-chk" onclick="chkFuc('video-chk', 'video-chk-div')" ${content.videoChk == 1 ? 'checked' : ""}>
                    </div>
                    <div class="video-chk-div">
                      <div class="tabs-4-1-video pb-3 border">
                        <h3 class="section-title">유튜브 공유 주소 입력</h3>
                        <div class="section-content">
                          <input type="text" class="form-control" placeholder="유튜브 링크 주소" name="video-link" value="${content.videoLink == '' ? '' : content.videoLink}">
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
                  <ul class="border pl-3 d-flex h-100">
                    <li class="d-flex align-items-center">계좌 연동</li>
                  </ul>
                </div>
                <!-- 5 계좌 연동 - 하위 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 5-0 -->
                  <div id="tabs-5-0">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <span>계좌 연동</span>
                      <input type="checkbox" class="ml-2" name="account-chk" checked="checked" onclick="chkFuc('account-chk', 'account-chk-div')" ${content.accountChk == 1 ? 'checked' : ""}>
                    </div>
                    <div class="account-chk-div">
                      <div class="tabs-5-0-account pb-3 border">
                        <h3 class="section-title">계좌 번호 선택</h3>
                        <div class="section-content">
                          <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <label class="input-group-text" for="inputGroupSelect01">계좌 선택</label>
                            </div>
                            <select class="custom-select" id="inputGroupSelect01" name="account-select">
                              <option value="0" ${content.accountSelect == 0 ? 'checked' : ""}>계좌번호를 선택하세요</option>
                              <option value="1" ${content.accountSelect == 1 ? 'checked' : ""}>[우리은행]홍길동(111-1111-1111)</option>
                              <option value="2" ${content.accountSelect == 2 ? 'checked' : ""}>[하나은행]홍길순(222-2222-2222)</option>
                              <option value="3" ${content.accountSelect == 3 ? 'checked' : ""}>[기업은행]홍길자(333-3333-3333)</option>
                              <option value="4" ${content.accountSelect == 4 ? 'checked' : ""}>[카카오뱅크]홍길세(444-4444-4444)</option>
                            </select>
                          </div>
                          <div class="d-flex justify-content-end">
                            <button class="btn btn-info">다른계좌 등록하기</button>
                          </div>
                        </div>
                      </div>
                      <div class="tabs-5-0-money pb-3 border">
                        <h3 class="section-title">관람료</h3>
                        <div class="section-content">
                          <div class="col-6 p-0 d-flex align-items-center">
                            <input type="text" class="form-control" placeholder="액수 입력" name="account-money" value="${content.accountMoney == '' ? '' : content.accountMoney}"><span class="mx-2">원</span>
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
                  <ul class="border p-0 d-flex align-items-stretch justify-content-center h-100">
                    <li class="border bg-white"><a href="#tabs-6-1" class="h-100 d-flex align-items-center text-center"><span>참석 여부</span></a></li>
                    <li class="border bg-white"><a href="#tabs-6-2" class="h-100 d-flex align-items-center text-center"><span>방명록</span></a></li>
                    <li class="border bg-white"><a href="#tabs-6-3" class="h-100 d-flex align-items-center text-center"><span>SNS 공유</span></a></li>
                  </ul>
                </div>
                <!-- 6 추가 기능 - 하위 탭 -->
                <div class="sub-tab-section border p-3 mb-5">
                  <!-- 하위 탭 6-1 참석 여부 -->
                  <div id="tabs-6-1">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <span>참석 여부 사용</span>
                      <input type="checkbox" class="ml-2" name="attend-chk" ${content.attendChk == 1 ? 'checked' : ""}>
                    </div>
                  </div>
                  <!-- 하위 탭 6-2 방명록 -->
                  <div id="tabs-6-2">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <span>방명록 사용</span>
                      <input type="checkbox" class="ml-2" name="comment-chk" ${content.commentChk == 1 ? 'checked' : ""}>
                    </div>
                  </div>
                  <!-- 하위 탭 6-3 SNS 공유 -->
                  <div id="tabs-6-3">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <span>SNS 공유하기 사용</span>
                      <input type="checkbox" class="ml-2" name="sns-share-chk" onclick="chkFuc('sns-share-chk','sns-share-chk-div')" ${content.snsShareChk == 1 ? 'checked' : ""}>
                    </div>
                    <div class="sns-share-chk-div">
                      <div class="tabs-6-3-selectSNS pb-3 border">
                        <h3 class="section-title">SNS 공유 선택</h3>
                        <div class="section-content">
                          <div class="p-0 d-flex align-items-center">
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" name="select-sns" type="checkbox" id="select-sns-01" value="select-sns-01">
                              <label class="form-check-label" for="select-sns-01">카카오톡</label>
                            </div>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" name="select-sns" type="checkbox" id="select-sns-02" value="select-sns-02">
                              <label class="form-check-label" for="select-sns-02">카카오스토리</label>
                            </div>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" name="select-sns" type="checkbox" id="select-sns-03" value="select-sns-03">
                              <label class="form-check-label" for="select-sns-03">네이버 밴드</label>
                            </div>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" name="select-sns" type="checkbox" id="select-sns-04" value="select-sns-04">
                              <label class="form-check-label" for="select-sns-04">페이스북</label>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="tabs-6-3-snsMSG pb-3 border">
                        <div class="p-2 d-flex justify-content-between align-items-center">
                          <h3 class="section-title">카카오톡 공유 문구 삽입</h3>
                          <input type="checkbox" checked="checked" name="sns-msg-chk" onclick="chkFuc('sns-msg-chk','textarea-content')" ${content.snsMsgChk == 1 ? 'checked' : ""}>
                        </div>
                        <div class="section-content">
                          <!-- 카카오톡 공유 문구 삽입 -->
                          <textarea class="form-control textarea-content" name="sns-msg-content" placeholder="<00대학교 00학부 제00회 음악 연주회>

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
  <!-- custom javsScript -->
  <script type="text/javascript" src="js/edit.js?v=<%=System.currentTimeMillis() %>"></script>
  <script type="text/javascript" src="js/common.js?v=<%=System.currentTimeMillis() %>"></script>
  <!-- jquery-ui.js -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>

  $( function() {
	  
    $( "#tabs" ).tabs();
    $( "#sub-tabs-1" ).tabs();
    $( "#sub-tabs-3" ).tabs();
    $( "#sub-tabs-4" ).tabs();
    $( "#sub-tabs-6" ).tabs();

  } );

  </script>

</body>
</html>
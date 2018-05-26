<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- input radio 일 때,input-id랑 label-for이랑 같아야 함, name=value -->
	<div class="col-4 mx-auto mt-5">
		<form action="/ex0417Builder/contentEditPro.do" method="post" enctype="Multipart/form-data">
			<div class="form-group">
				<div class="alert alert-info text-center" role="alert">스킨선택</div>
				<!--스킨선택 - 행사 종류 -->
				<label>행사 종류</label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="type"
						id="type-a" value="a"> <label class="form-check-label"
						for="type-a">동호회</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="type"
						id="type-b" value="b"> <label class="form-check-label"
						for="type-b">전시회</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="type"
						id="type-c" value="c"> <label class="form-check-label"
						for="type-c">종교행사</label>
				</div>
				<br><br>
				<!-- 스킨선택 - 스킨 정보 -->
				<label>스킨 정보</label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="skin"
						id="skin-a-01" value="a-01"> <label
						class="form-check-label" for="skin-a-01">동호회 스킨</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="skin"
						id="skin-b-01" value="b-01"> <label
						class="form-check-label" for="skin-b-01">전시회 스킨</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="skin"
						id="skin-c-01" value="c-01"> <label
						class="form-check-label" for="skin-c-01">종교행사 스킨</label>
				</div>
			</div>
			
			<div class="form-group">
				<div class="alert alert-info text-center" role="alert">상단정보</div>
				<!--상단정보 - 제목 -->
				<label>초대장 제목</label><br>
				<input type="text" class="form-control" name="top-title">
				<br>
				<!-- 상단정보 - 이미지 -->
				<label>상단 이미지</label><br>
				<!-- <input type="text" class="form-control" name="top-img-file"> -->
				<div class="custom-file">
					<input type="file" class="custom-file-input" id="top-img-file" name="top-img-file">
					<!-- <input type="text" class="form-control" id="top-img-file" name="top-img-file"> -->
					<label class="custom-file-label" for="top-img-file">선택</label>
				</div>
				<br><br>
				<!-- 상단정보 - 상단이미지 방향 -->
				<label>상단 이미지 방향 </label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-img-align"
						id="top-img-align-row" value="row"> <label
						class="form-check-label" for="top-img-align-row">가로</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-img-align"
						id="top-img-align-col" value="col"> <label
						class="form-check-label" for="top-img-align-col">세로</label>
				</div>
				<br><br>
				<!-- 상단정보 - 글 색상 -->
				<label>상단 글 색상</label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-color"
						id="top-font-color-01" value="white"> <label
						class="form-check-label" for="top-font-color-01">흰색</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-color"
						id="top-font-color-02" value="pink"> <label
						class="form-check-label" for="top-font-color-02">핑크</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-color"
						id="top-font-color-03" value="yellow"> <label
						class="form-check-label" for="top-font-color-03">노랑</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-color"
						id="top-font-color-04" value="green"> <label
						class="form-check-label" for="top-font-color-04">초록</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-color"
						id="top-font-color-05" value="blue"> <label
						class="form-check-label" for="top-font-color-05">파랑</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-color"
						id="top-font-color-06" value="black"> <label
						class="form-check-label" for="top-font-color-06">검정</label>
				</div>
				<br><br>
				<!-- 상단정보 - 글 정렬 -->
				<label>상단 글 정렬</label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-align"
						id="top-font-align-01" value="left"> <label
						class="form-check-label" for="top-font-align-01">왼</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-align"
						id="top-font-align-02" value="center"> <label
						class="form-check-label" for="top-font-align-02">가운데</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="top-font-align"
						id="top-font-align-03" value="right"> <label
						class="form-check-label" for="top-font-align-03">오른쪽</label>
				</div>
			</div>

			<button type="submit" class="btn btn-primary btn-block">완료하기</button>
		</form>
	</div>

</body>
</html>
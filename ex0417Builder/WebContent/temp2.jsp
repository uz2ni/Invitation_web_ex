
<div class="menubar row" style="background-repeat: repeat; background-image: url('./img/common//pattern.png'); background-size: 500px;">
	<div class="menubar-name col-sm-2" style="height: 10px;"></div>
</div>

<article class="side-back col-12 d-flex flex-article" style="auto;">

	<div class="side-back-left col-sm-2 text-center">
		<div class="nav-item-side">
			<a class="nav-link" href="my_1.html">나의 서비스</a>
		</div>
		<div class="nav-item-side">
			<a class="nav-link" href="my_2.html">통계 관리</a>
		</div>
	</div>

	<!--Main-->
	<article class="center col-8 text-center">
	<!--part1-->
	<div class="col" style="height: 160vh">
		<h4 class="title text-left my-2">나의 서비스</h4>
		
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">
						<div class="form-group col-sm-6 mx-auto">
							<div class="mx-auto"
								style="width: 200px; height: 200px; border-radius: 50%; border: 2px solid gray;"></div>
						</div>
					</th>
					<td style="padding-top: 90px;">
						<div class="row">
							<div class="form-group">${user.userName} (${user.userEmail})</div>
						</div>
						<div class="row">
							<div class="form-group">다른 내용들</div>
						</div>
						 <a href="my_3.html"><button type="button" class="btn btn-sm" style="background: #369ea2; color: white;">수정하기</button></a>
						 <a href=""><button type="button" class="btn btn-sm" style="background: #f2f2f2;">탈퇴하기</button></a>
					</td>
				</tr>
			</thead>
		</table>
	
		<div class="tab-pane fade show active col-12" id="nav-home"
			role="tabpanel" aria-labelledby="nav-home-tab">
			<div class="row">
				<!-- url list -->
				<c:forEach var="content" items="${contents}">
					<div class="ex1 col-md-4"
						style="height: 320px; border: 1px solid black;">
						<div class="container">
							<img class="card-img-top mx-0"
								src="${content.topImgFile}" />
							<div class="overlay">
								<div class="text">
									${content.topTitle}<br>${content.urlName}<br>${content.payDate}<br>${content.lastDate}
								</div>
							</div>
						</div>
						<div class="tag" style="height: 35px; border: 1px solid black;">
							<!--button-->
							<a href="/ex0417Builder/contentEditForm.do?urlId=${content.urlId}"><button type="button" class="btn btn-sm"
									style="background: #369ea2; color: white;">편집</button></a>
									 <a
								href="extension.html"><button type="button"
									class="btn btn-sm" style="background: #369ea2; color: white;">연장</button></a>
							<div class="modal fade" id="exampleModalCenter" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
		
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLongTitle">초대장(URL)
												삭제하기</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body text-left">
											초대장을 삭제하시겠습니까?<br> -삭제하신 초대장 주소는 재사용이 불가능 합니다.<br>
											-무료 이벤트 초대장을 삭제하시면 이후 추가 신청 초대장은 유료 결제 하셔야 합니다.
										</div>
										<div class="modal-footer">
											<button type="button" class="btn" data-dismiss="modal"
												style="background: #4C4C4C; color: white;">확인</button>
											<button type="button" class="btn" data-dismiss="modal"
												style="background: #B91D1E; color: white;">취소</button>
										</div>
		
									</div>
								</div>
							</div>
							<!--button_end-->
						</div>
					</div>
				</c:forEach>
				<!-- url_List_end -->
				
			</div>
		</div>
	</div>
	</article>
</article>
</section>

<div class="row" style="background-repeat: repeat; background-image: url('./img/common//pattern.png'); background-size: 500px; height: 10px;"></div>

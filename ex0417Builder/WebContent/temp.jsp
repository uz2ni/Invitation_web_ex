<article class="side-back col-12 d-flex flex-article" style="">
			<div class="side-back-left col-sm-2 text-center">
				<div class="nav-item-side">
					<a class="nav-link" href="service_1.html">기능소개</a>
				</div>
				<div class="nav-item-side">
					<a class="nav-link" href="service_2.html">구경하기</a>
				</div>
				<div class="nav-item-side">
					<a class="nav-link" href="service_3.html">매뉴얼</a>
				</div>
				<div class="nav-item-side">
					<a class="nav-link" href="service_4.html">고객센터</a>
				</div>
				<div class="nav-item-side">
					<a class="nav-link" href="service_5.html">회사소개</a>
				</div>
			</div>
			<!--Main-->
			<article class="center col-8 text-center" style="height: 150vh;">
				<!--Search-->
				<h1 style="font-weight: bold; margin-top: 10px;">Search</h1>
				<form action="lookListSearch.do" method="get" class="d-flex col-12 form-inline p-2 my-2 my-lg-0" style="background: #f2f2f2;">
					<h6 class="col-2" style="font-weight: bold;">태그검색</h6>
					<div class="col-10">
						<input class="col-8 form-control mr-sm-2" type="search" name="query"
						data-toggle="tooltip" data-placement="top"
						title="# 과 , 로 최대 10개까지 입력 가능합니다." placeholder="태그를 입력하세요..."
						aria-label="Search" style="width: 780px;">
						<button class="col-2 btn" type="submit" style="background-color: #333333; color: white;">검색</button>
					</div>
				</form>
				<!--Search-->
				<!--태그 예시 -->
				<div class="extag mt-2 p-2">
					<span class="exbadge">#봄</span> <span class="exbadge">#개나리</span> <span
						class="exbadge">#노란색</span> <span class="exbadge">#운동회</span> <span
						class="exbadge">#분홍색</span>
				</div>
				<div class="extag mt-2 p-1">
					<span class="exbadge">#졸업작품연주회</span> <span class="exbadge">#장미</span>
					<span class="exbadge">#빼빼로데이</span> <span class="exbadge">#생일파티</span>
				</div>
				<div class="extag m-1">
					<span class="exbadge">#빨간색</span> <span class="exbadge">#대학축제</span>
					<span class="exbadge">#어린이날</span> <span class="exbadge">#연말</span>
				</div>
				<nav class="navbar navbar-light" style="background-color: #333333;">
					<nav>
						<div class="nav nav-tabs justify-content-center" id="nav-tab"
							role="tablist">
							<a class="nav-item nav-link active font-weight-bold"
								id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">모임</a> <a
								class="nav-item nav-link font-weight-bold" id="nav-profile-tab"
								data-toggle="tab" href="#nav-profile" role="tab"
								aria-controls="nav-profile" aria-selected="false">발표회</a> <a
								class="nav-item nav-link font-weight-bold" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">종교 행사</a>
						</div>
					</nav>
					<div class="tab-content text-right" id="nav-tabContent">
					
					<% if(session.getAttribute("user") != null) { %>
						<a href="lookWriting.do"><button type="button" class="btn" style="background: #369ea2; color: white;">글 올리기</button></a>
					<% } %>	 
						
				</nav>
				<!--모임-->
				<div class="tab-pane fade show active col-12" id="nav-home"
					role="tabpanel" aria-labelledby="nav-home-tab">
					<div class="col-12 text-right my-2">
						<div class="btn-group p-1" role="group">
							<button type="button" class="btn btn-light d-flex"
								style="box-shadow: 1px 1px 0.1px 0.01px gray;">
								<img src="img/common/like.png" width="18" height="18" />
								<div class="px-1" style="margin-top: -3px;">인기순</div>
							</button>
							<button type="button" class="btn btn-light d-flex"
								style="box-shadow: 1px 1px 0.1px 0.01px gray;">
								<img src="img/common/wall-clock.png" width="18"
									height="18" />
								<div class="px-1" style="margin-top: -3px;">최신순</div>
							</button>
						</div>
					</div>
					<!--게시글-->
					<div>
						<!--첫째줄-->
						<div class="col d-flex mt-4">
						<!--ex_1-->
						<c:if test="${select != -1}">
						<c:forEach var="look" items="${looks}">
							<div class="ex1 col-md-4" style="height: 320px;">
								<div class="container px-0"
									style="border: 1px solid #dcd9d9; border-radius: 5% 5% 0% 0%;">
									<img class="card-img-top" data-toggle="modal"
										data-target="#myModal"
										src="${look.lookImg}" />
									<div class="overlay">
										<div class="row pt-3">
											<div class="invite-name col-8 mt-2" style="font-weight: bold;">${look.lookTitle}</div>
											<div
												class="invite-name d-flex justify-content-end col-10 mt-2"
												role="group">
												<div class="like-number p-1">
													<img src="img/common/like.png" width="15"
														height="15" /><a class="m-1">${look.lookHeart}</a>
												</div>
												<div class="comment-number p-1">
													<img src="img/common/comment.png" width="15"
														height="15" /><a class="m-1">${look.lookHit}</a>
												</div>
											</div>
										</div>
									</div>
									<!--click-->
									<div class="modal modal-center fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog modal-center modal-fullsize modal-lg"
											role="document">
											<div class="modal-content modal-fullsize">
												<div class="modal-header" style="background: #333333;">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span style="color: white;" aria-hidden="true">&times;</span>
													</button>
													<h4 class="modal-title" id="myModalLabel"></h4>
												</div>
												<div class="modal-body d-flex">
													<div class="col-6" style="border: 1px solid #dcd9d9;">
														<div style="width: 100%; height: 100%; overflow-y: scroll;">
															<img src="http://via.placeholder.com/320x595" />
														</div>
													</div>
													<div class="col-6" style="border: 1px solid #dcd9d9;">
														<div style="width: 100%; height: 100%; overflow-y: scroll;">
															<div class="d-flex pt-1" style="height: 7vh;">
																<div class="col-2 p-1">
																	<div
																		style="border: 1px solid #dcd9d9; border-radius: 100%; width: 45px; height: 45px; margin-top: -2px;"></div>
																</div>
																<div class="col-10">
																	<div style="font-weight: bold;">${look.lookTitle}</div>
																	<div style="font-size: 12px;">박민정</div>
																</div>
															</div>
															<div class="" style="height: 17vh;">
																<span class="badge"
																	style="background-color: #dcd9d9; color: #2d62cd;">${look.lookHashTag}</span>
															</div>
															<HR>
															<div class="d-flex" style="height: 4vh;">
																<div class="col-4"></div>
																<div class="col-4"
																	style="font-weight: bold; color: #333333;">
																	<img src="img/common/comment.png" width="15"
																		height="15" />댓글달기
																</div>
																<!--하트-->
																<fieldset class="checkbox">
																	<input type="checkbox" name="frontend" id="heart">
																	<label for="heart"></label>
																</fieldset>
																<!--하트_end-->
															</div>
															<div class="d-flex" style="height: 4vh;">
																<div class="d-flex col-5">
																	<div class="d-flex col-4">
																		<div class="mx-1">
																			<img src="img/common/like.png" width="15"
																				height="15" />
																		</div>
																		<div>12</div>
																	</div>
																	<div class="d-flex col-4">
																		<div class="mx-1">
																			<img src="img/common/comment.png" width="15"
																				height="15" />
																		</div>
																		<div>12</div>
																	</div>
																</div>
															</div>
															<div class=""
																style="height: 30vh; border: 1px solid #b0afaf;">댓글내용
															</div>
															<div class="d-flex"
																style="height: 8vh; background: #dcd9d9; border: 1px solid #b0afaf;">
																<div class="col-2 p-2">
																	<div
																		style="border: 1px solid #b0afaf; border-radius: 100%; width: 45px; height: 45px; margin-top: -2px;"></div>
																</div>
																<div class="col-10 pt-3">
																	<div>
																		<input type="text" class=""
																			style="width: 250px; border-radius: 15px 15px 15px 15px;"
																			placeholder=" 댓글을 입력하세요...">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-footer" style="background: #333333;">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
									<!--click_end-->
								</div>
								<div class="tag"
									style="border: 1px solid #dcd9d9; height: 50px; background: #f2f2f2; border-radius: 0% 0% 5% 5%;">
									<!-- 태그 -->
										<span class="badge"
										style="background-color: white; color: #2d62cd;">
										${look.lookHashTag}</span>
								</div>
							</div>
						</c:forEach>
						</c:if>
					</div>
						<!--둘째줄_end-->
					</div>
					<!--발표회-->
					<div class="tab-pane fade show active col-12" id="nav-profile"
						role="tabpanel" aria-labelledby="nav-profile-tab"></div>
					<!--종교행사-->
					<div class="tab-pane fade show active col-12" id="nav-contact"
						role="tabpanel" aria-labelledby="nav-contact-tab"></div>
				</div>
			</article>
		</article>
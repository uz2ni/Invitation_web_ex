<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<title>Insert title here</title>

<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="statistic/assets/css/bootstrap.min.css" rel="stylesheet"  id="bootstrap-css" />
<link href="statistic/assets/css/now-ui-dashboard.css?v=1.1.0" rel="stylesheet" />

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="statistic/assets/css/custom.css" rel="stylesheet" />
<link href="statistic/assets/demo/demo.css" rel="stylesheet" />

</head>
<body>

<!-- Start wrapper -->
<div class="wrapper ">
	<!-- Side bar -->
	<div class="sidebar" data-color="orange">
		<div class="logo">
			<a href="#" class="simple-text logo-mini"> <i
				class="now-ui-icons users_circle-08"></i>
			</a> <a href="#" class="simple-text logo-normal">USER ID</a>
		</div>
		<div class="sidebar-wrapper">
			<ul class="nav">
				<li class="active "><a href="statisticAttend.do?urlId=${urlId}"> <i
						class="now-ui-icons business_chart-bar-32"></i>
						<p>통계</p>
				</a></li>
				<li><a href="statisticBefore.do?urlId=${urlId}"> <i
						class="now-ui-icons education_paper"></i>
						<p>사전 설문 조사 결과</p>
				</a></li>
				<li><a href="./feedback.html"> <i
					class="now-ui-icons business_bulb-63"></i>
						<p>피드백</p>
				</a></li>
				<li><a href="./user.html"> <i
						class="now-ui-icons users_single-02"></i>
						<p>내 정보</p>
				</a></li>
			</ul>
		</div>
	</div> 
	<!-- End of Side bar -->

	<!-- Start main panel -->
	<div class="main-panel">
		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<div class="navbar-toggle">
						<button type="button" class="navbar-toggler">
							<span class="navbar-toggler-bar bar1"></span> <span
								class="navbar-toggler-bar bar2"></span> <span
								class="navbar-toggler-bar bar3"></span>
						</button>
					</div>
					<a class="navbar-brand" href="#pablo">통계</a>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navigation" aria-controls="navigation-index"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-bar navbar-kebab"></span> <span
						class="navbar-toggler-bar navbar-kebab"></span> <span
						class="navbar-toggler-bar navbar-kebab"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navigation">
					<form>
						<div class="input-group no-border">
							<input type="text" value="" class="form-control"
								placeholder="Search...">
							<div class="input-group-append">
								<div class="input-group-text">
									<i class="now-ui-icons ui-1_zoom-bold"></i>
								</div>
							</div>
						</div>
					</form>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End of Navbar -->
		<!-- 상단 그래프 있던거 -->
		<div class="panel-header panel-header-sm">
			<!-- <canvas id="bigDashboardChart"></canvas> -->
		</div>
		<!-- End of 상단 그래프 있던거 -->

		<div class="content">
			<div class="row">
				<!-- 예상참석,참석,불참 그래프-->
				<div class="col-md-6">
					<div class="card card-chart">
						<div class="card-header">
							<h5 class="card-category">GRAPH</h5>
							<h4 class="card-title">예상 참석, 불참석 그래프</h4>
						</div>
						<div class="card-body">
							<div class="chart-area">
								<div id="expectChart" name="expectChart"
									style="width: 500px; height: 280px;"></div>
							</div>
						</div>
						<div class="card-footer">
							<div class="stats">
								<!-- 카드 풋터 업데이트 내용 등등  -->
							</div>
						</div>
					</div>
				</div>
				<!-- End of 예상참석,참석,불참 그래프-->
				<!-- 시간별 대비 참석 인원  -->
				<div class="col-md-6">
					<div class="card card-chart">
						<div class="card-header">
							<h5 class="card-category">COUNT OF ATTENDANCE PEOPLE</h5>
							<h4 class="card-title">시간별 대비 참석 인원</h4>
						</div>
						<div class="card-body">
							<div class="chart-area">
								<div id="timeChart" name="timeChart" style="width: 500px; height: 300px;"></div>
							</div>

						</div>
						<div class="card-footer">
							<div class="stats">
								<!-- 카드 풋터 업데이트 내용 등등  -->
							</div>
						</div>
					</div>
				</div>
				<!-- End of 시간별 대비 참석 인원 -->
				<!-- attendance name List start -->
				<div class="col-md-6">
					<div class="card">
						<div class="card-header">
							<h5 class="card-category">Attendance Name List</h5>
							<h4 class="card-title">행사 참석자 명단</h4>
						</div>
						<div class="card-body">
							<div id="table_div1" name="attendYesListTable" class="table_div1" style="height: 250px;"></div>
						</div>
					</div>
				</div>
				<!-- End of attendance name List-->

				<!-- Reason for non-attendance start -->
				<div class="col-md-6">
					<div class="card">
						<div class="card-header">
							<h5 class="card-category">Reason for non-attendance List</h5>
							<h4 class="card-title">행사 불참석 이유</h4>
						</div>
						<div class="card-body">
							<div id="table_div2" name="attendNoListTable" style="height: 250px";></div>
						</div>
					</div>
				</div>
				<!-- End of Reason for non-attendance-->
			</div>
		</div>
		<!-- footer -->
		<footer class="footer">
			<div class="container-fluid">
				<div class="copyright">
					&copy;
					<script>
						document.write(new Date().getFullYear())
					</script>
					<a href="#" target="_blank">Invited
						You</a>.
				</div>
			</div>
		</footer>
		<!-- End of footer -->
	</div>
	<!-- End of main panel -->
</div>
<!-- End of wrapper -->

<!--   Core JS Files   -->
<script src="statistic/assets/js/core/jquery.min.js"></script>
<script src="statistic/assets/js/core/popper.min.js"></script>
<script src="statistic/assets/js/core/bootstrap.min.js"></script>
<script src="statistic/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

<!--  Notifications Plugin    -->
<script src="statistic/assets/js/plugins/bootstrap-notify.js"></script>
<!-- 	<script src="../assets/js/now-ui-dashboard.min.js?v=1.1.0" type="text/javascript"></script> -->
<script src="statistic/assets/demo/demo.js"></script>

<!-- Google chart api -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<!-- Google Graph js -->
<script src="statistic/assets/js/statisticAttendGraph.js"></script>

<script>
attendData = ${attendData}; // 예상 참석 인원 데이터
attendTimeData = ${attendTimeData}; // 시간 별 데이터
attendListData = ${attendListData}; // 행사 참석 명단, 불참 이유
</script>

</body>
</html>
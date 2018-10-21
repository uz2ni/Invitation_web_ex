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
<link href="statistic/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="statistic/assets/css/now-ui-dashboard.css?v=1.1.0" rel="stylesheet" />

<!-- custom css -->
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
				<li class=""><a href="statisticAttend.do?urlId=${urlId}"> <i
						class="now-ui-icons business_chart-bar-32"></i>
						<p>통계</p>
				</a></li>
				<li class="active"><a href="statisticBefore.do?urlId=${urlId}"> <i
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
					<a class="navbar-brand" href="#pablo">피드백</a>
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
					<ul class="navbar-nav">
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Navbar -->
		<div class="panel-header panel-header-sm"></div>
		<div class="content">
			<div class="row" id="queRow">
				<c:forEach var="que" begin="1" end="${formCnt}" step="1">
					<div class="col-md-6" id="que-${que}">
						<div class="card card-chart">
							<div class="card-header">
								<h5 class="card-category">피드백 문항 ${que}</h5>
								<h4 class="card-title" id="title-${que}"></h4>
							</div>
							<div class="card-body">
								<div class="chart-area">
								<div id="graph-${que}" class="survey_table2 graphBox"
									style="height: 250px;"></div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<footer class="footer">
			<div class="container-fluid">
				<div class="copyright">
					&copy;
					<script>
						document.write(new Date().getFullYear())
					</script>
					<a href="https://www.creative-tim.com" target="_blank">Invited
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
<script src="statistic/assets/js/now-ui-dashboard.min.js?v=1.1.0" type="text/javascript"></script>
<script src="statistic/assets/demo/demo.js"></script>

<!-- Google chart api -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<!-- Google Graph js -->
<script src="statistic/assets/js/statisticBeforeGraph.js"></script>

<script>
beforeFormData = ${beforeFormData}; // 사전 설문조사 양식 데이터
beforeAnswerData = ${beforeAnswerData}; // 사전 설문조사 답변 데이터
</script>

</body>
</html>
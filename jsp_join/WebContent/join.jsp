<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<!-- 
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/article.css">
 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>





<title>별별게시판</title>
</head>
<body>
	<!-- 네비게이션  -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
		
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expaned="false">
				
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			
			<a class="navbar-brand" href="main.jsp">
				<p style="font-weight: bold">별별게시판</p>
			</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">별별게시판</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>

					</ul></li>
			</ul>
		</div>
	</nav>
	
	<!-- 로그인 폼 -->
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
		
			<!-- 점보트론 -->
			<div class="jumbotron" style="padding-top: 20px;">
			
				<!-- 로그인 정보를 숨기면서 전송post -->
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디는 이메일형식입니다"
							name="u_id" maxlength="20">
					</div>
					
					<div class="form-group">
					
						<input type="password" class="form-control" placeholder="비밀번호"
							name="u_password" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="u_name" maxlength="20">
					</div>
	
					<input type="submit" class="btn btn-primary form-control"
						value="회원가입">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	
	
	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 부트스트랩 JS  -->
	<script src="js/bootstrap.js"></script>
</body>
</html>
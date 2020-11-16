<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="Model.member" import="Model.porder"
	import="Model.member"%>
<!DOCTYPE html>
<html>
<head>
<title>購物車</title>
<%
	member m = (member) session.getAttribute("M");
%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../style.css">
<!--[if lt IE 9]>
      <script src="bootstrap/js/html5shiv.min.js"></script>
      <script src="bootstrap/js/respond.min.js"></script>
    <![endif]-->
<script src="../bootstrap/js/jquery.min.js"></script>
<script src="../bootstrap/js/jquery-migrate.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<!-- header  -->
		<div id="shop_head">
			<a href="../index.jsp"> <img src="../images/title.jpg" alt="購物網站"
				class="img-responsive">
			</a>
		</div>

		<!-- container -->
		<div id="shop_main" class="row">
			<div class="col-md-9 col-sm-8">
				主內容區
				<div class="row">
					<form action="addporder" method="post" role="form"
						class="form-horizontal">
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="pic/p1.jpg" alt="通用的占位符缩略图">
								<div class="caption">
									<h4>Chorizo & mozzarella gnocchi bake</h4>
									<p>Upgrade cheesy tomato pasta with gnocchi</p>
									<p>＄10</p>
									<p>
										<select name="product1">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
										</select>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="pic/p2.jpg" alt="通用的占位符缩略图">
								<div class="caption">
									<h4>One-pan spaghetti with nduja</h4>
									<p>A spicy sausage pasta dish with a difference.</p>
									<p>＄20</p>
									<p>
										<select name="product2">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
										</select>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="pic/p3.jpg" alt="通用的占位符缩略图">
								<div class="caption">
									<h4>Easy pancakes</h4>
									<p>Learn a skill for life with our foolproof crêpe recipe
										hat ensures perfect pancakes</p>
									<p>＄30</p>
									<p>
										<select name="product3">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
										</select>
									</p>
								</div>
							</div>
						</div>
						<div class="text-center">
							<input type="submit" class="btn btn-outline-primary" value="送出">
						</div>
					</form>
				</div>


			</div>
			<div class="col-md-3 col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">功能表</div>
					<div class="panel-body">
						<div class="alert alert-success"><%=m.getName()%>您好！ 歡迎光臨
						</div>
						<a href="index.jsp" class="btn btn-block btn-primary">回首頁</a>
						 
							



					</div>




				</div>
			</div>

		</div>

		<!-- footer  -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>
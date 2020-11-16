<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="Model.member"%>
<!DOCTYPE html>
<html>
<head>
<%
	member m = (member) session.getAttribute("M");
%>
<title>購物</title>
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
		<!--contatint -->

		<div id="shop_main" class="row">
			<div class="col-md-8 col-sm-7">
				主內容區
				





			</div>
			<div class="col-md-4 col-sm-5">
				<div class="panel panel-primary">
					<div class="panel-heading">功能表</div>
					<div class="panel-body">
						<div class="alert alert-success"><%=m.getName()%>您好！ 歡迎光臨
						</div>
						<a href="index.jsp" class="btn btn-block btn-primary">回首頁</a> <a
							href="addPorder.jsp" class=" btn btn-block btn-warning">新增訂單</a>
						<a href="updatePorder.jsp" class="btn btn-block btn-success">修改訂單</a>
						<a href="queryPorder.jsp" class="btn btn-block btn-danger">查詢訂單</a>
						<a href="deletePorder.jsp" class="btn btn-block btn-info">刪除訂單</a>

					</div>
				</div>
			</div>

		</div>

		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>
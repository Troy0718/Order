<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Model.member" import="Model.porder"
    
	
	import="java.util.List"
	import="Dao.queryporder"
	%>
<!DOCTYPE html>
<html>
<head>
<%
	member m = (member) session.getAttribute("M");
%>
<meta charset="UTF-8">
<title>依客戶消費金額查詢訂單</title>
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
				<nav class="navbar navbar-inverse">
				 <ul class="nav navbar-nav">
					<li><a class="nav-link" href="queryName.jsp">依客戶名稱查詢訂單</a>
					</li>
					<li><a class="nav-link" href="querySum.jsp">依客戶消費金額查詢訂單</a></li>
					</ul>
				</nav>
				
				
				<form action="querySum.jsp" method="post"  role="form"   class="form-horizontal">
					<div class="col-md-12"><h3 text-align="right">請輸入消費查詢訂單紀錄</h3></div>
        	<div class="form-group">
                  <label class="col-md-2 control-label">最小消費金額：</label>
                  <div class="col-md-4">
                    <input type="text" name="start" value="" class="form-control validate[require]" placeholder="" >                   
                  </div>
                  <label class="col-md-2 control-label">最大消費金額：</label>
                  <div class="col-md-4">
                    <input type="text" name="end" value="" class="form-control validate[require]" placeholder="" >                   
                  </div>
                  <label class="col-md-2 control-label"></label>  
                   <div class="text-center">
							<input type="submit" class="btn btn-outline-primary" value="送出">
						</div>
                </div>		
				</form>


						
					
					<table class="table table-bordered">
					<tr><th>編號<th>姓名<th>Chorizo<th>spaghetti<th>pancakes<th>總額<th>打折後
						<%
							String start =request.getParameter("start") ;
							String end =request.getParameter("end") ;
							
							
							List l;
							if(start == "" || start == null ||end == "" || end == null ){
								l=queryporder.queryAll();
							
							}else{
								int Start = Integer.parseInt(start);
								int End = Integer.parseInt(end);
								l = queryporder.querySum(Start, End);
							}
							
							for(Object o : l){
								porder p = (porder)o;
								out.println("<tr>"+"<td>"+ p.getId()+"<td>"+p.getName()+"<td>"
										+ p.getProduct1()+"<td>" +p.getProduct2()+"<td>"
										+ p.getProduct3()+"<td>" +p.getSum()+"<td>"+p.getDiscount()
										);
								
							}
												
						%>
					</table>				
				
			</div>
			<div class="col-md-3 col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">功能表</div>
					<div class="panel-body">
						<div class="alert alert-success"><%= m.getName() %>您好！ 歡迎光臨
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
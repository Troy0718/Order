<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.member" import="Model.porder"
    import="Dao.porderDao"
	import="Model.porder"
	import="java.util.List"
	import="Dao.queryporder"
    import ="java.util.Date"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂單修改</title>
<%
	//member m = (member) session.getAttribute("M");
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
			<div class="col-md-9 col-sm-7">
				主內容區
				<form action="updatePorder.jsp" method="post"  role="form"   class="form-horizontal">
					<div class="col-md-12"><h3 text-align="right">請輸入欲修改訂單資料</h3></div>
        		<div class="form-group">
                  <label class="col-md-2 col-sm-2 control-label">編號：</label>
                  <div class="col-md-4 col-sm-4">
                    <input type="text" name="id" value="" class="form-control validate[require]" placeholder="" >                   
                  </div>
                  <label class="col-md-2 col-sm-2 control-label">姓名：</label>
                  <div class="col-md-4 col-sm-4">
                    <input type="text" name="name" value="" class="form-control validate[require]" placeholder="" >                   
                  </div>
                  </div>
                  <div class="form-group">
                  <label class="col-md-2 col-sm-2 control-label">Chorizo：</label>
                  <div class="col-md-4 col-sm-4">
                    <input type="text" name="product1" value="" class="form-control validate[require]" placeholder="" >                   
                  </div>
                  <label class="col-md-2 col-sm-2 control-label">spaghetti：</label>
                  <div class="col-md-4 col-sm-4">
                    <input type="text" name="product2" value="" class="form-control validate[require]" placeholder="" >                   
                  </div>
                  </div>
                  <div class="form-group">
                  <label class="col-md-2 col-sm-2 control-label">pancakes：</label>
                  <div class="col-md-4 col-sm-4">
                    <input type="text" name="product3" value="" class="form-control validate[require]" placeholder="" >                   
                  </div>                  
                   <div class="col-md-12 col-sm-12 text-center">
                   <label class="col-md-12 col-sm-12 control-label"></label>  
							<input type="submit" class="btn btn-outline-primary" value="送出">
						</div>
                  
                  </div>
                  
                  </form>
                
					<table class="table table-bordered">
					<tr><th>編號<th>姓名<th>Chorizo<th>spaghetti<th>pancakes<th>總額<th>打折後<th>修改時間
						<%
							String id =request.getParameter("id") ;
							String name =request.getParameter("name") ;
							String product1 = request.getParameter("product1");
							String product2 = request.getParameter("product2");
							String product3 = request.getParameter("product3");
							
							List l;
							if(id == "" || id == null ||name == "" || name == null ||
									product1 == "" || product1 == null ||product2 == "" || product2 == null||
									product3 == "" || product3 == null
									){
								l=queryporder.queryAll();
							
							}else{
							
								porder p = new porder();
								int Id = Integer.parseInt(id);
								int Product1 = Integer.parseInt(product1);
								int Product2 = Integer.parseInt(product2);
								int Product3 = Integer.parseInt(product3);
								p.setId(Id);
								p.setName(name);
								p.setProduct1(Product1);
								p.setProduct2(Product2);
								p.setProduct3(Product3);
								p.setPdate(new Date());
								
								new porderDao().update(p);
									
								l=queryporder.queryAll();
							}
							
							for(Object o : l){
								porder p = (porder)o;
								out.println("<tr>"+"<td>"+ p.getId()+"<td>"+p.getName()+"<td>"
										+ p.getProduct1()+"<td>" +p.getProduct2()+"<td>"
										+ p.getProduct3()+"<td>" +p.getSum()+"<td>"+p.getDiscount()+"<td>"+p.getPdate()
										);				
							}
												
						%>
					</table>				
				</div>
			
			<div class="col-md-3 col-sm-5">
				<div class="panel panel-primary">
					<div class="panel-heading">功能表</div>
					<div class="panel-body">
						<div class="alert alert-success">您好！ 歡迎光臨
						</div>
						<a href="index.jsp" class="btn btn-block btn-primary">回首頁</a>						
					</div>




				</div>
			</div>
			</div>
		</div>
		
<!-- footer  -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>
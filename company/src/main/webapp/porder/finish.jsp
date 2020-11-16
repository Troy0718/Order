<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	import="Model.member" 
	import="Model.porder"
	import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認訂單</title>
<%
	porder p = (porder) session.getAttribute("P");
	member m = (member) session.getAttribute("M");
	Date d = new Date();
%>
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
<script>
function varitext(text){
	text = document;
	print(text);
	
}

</script>
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
			<div class="text-center">
				主內容區
				<h2>我的訂購單</h2>
				<div><%=d.getYear() + 1900%>年
					<%=d.getMonth() + 1%>月<%=d.getDate()%>日 訂購細目
				</div>
				<div>
					收貨人：<%=m.getName()%></div>
				<div>
					收貨地址：<%=m.getAddress()%></div>
				<div>
					收穫電話：<%=m.getPhone()%></div>
			
				<table class="table table-hover">
					
					<tr>
						<th>品名</th>
						<th>數量</th>
					</tr>
					
					<tr>
						<td>Chorizo & mozzarella gnocchi bake</td>
						<td><%=p.getProduct1() %></td>
					</tr>
					<tr>
						<td>One-pan spaghetti with nduja</td>
						<td><%=p.getProduct2() %></td>
					</tr>
					<tr>
						<td>Easy pancakes</td>
						<td><%=p.getProduct3() %></td>
					</tr>
					<tr>
						<td>原價</td>
						<td><%=p.getSum() %></td>
					</tr>
					<tr>
						<td>折扣價(消費滿百打九折)</td>
						<td><%=p.getDiscount() %></td>
					</tr>
					
					
				</table>
				<div class="text-center">
					<form >
						<input class="btn btn-dark" type="button" onclick="varitext()" value="列印此頁">
					</form>
				</div >
				
			


			</div>
			

		</div>

		<!-- footer  -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>
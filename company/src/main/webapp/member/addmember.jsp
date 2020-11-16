<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>會員註冊</title>
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
        <a href="../index.jsp">
          <img src="../images/title.jpg" alt="購物網站" class="img-responsive">
        </a>
      </div>
      
	<!-- container -->
      <div id="shop_main" class="row">
        <div class="col-md-8 col-sm-7">主內容區
        <form action="addmember" method="post"  role="form"   class="form-horizontal">
        	<div class="col-md-12"><h3 text-align="right">會員註冊</h3></div>
        	<div class="form-group">
                  <label class="col-md-2 control-label">姓名：</label>
                  <div class="col-md-4">
                    <input type="text" name="name" value="" class="form-control validate[require]" placeholder="請輸入姓名" >                   
                  </div>
                  <label class="col-md-2 control-label">帳號：</label>
                  <div class="col-md-4">
                    <input type="text" name="username" value="" class="form-control validate[require]" placeholder="請輸入帳號">                   
                  </div>                
                </div>
        	<div class="form-group">
                  <label class="col-md-2 control-label">密碼：</label>
                  <div class="col-md-4">
                    <input type="password" name="password" value="" class="form-control validate[require]" placeholder="請輸入密碼">                   
                  </div>
                  <label class="col-md-2 control-label">電話：</label>
                  <div class="col-md-4">
                    <input type="phone" name="phone" value="" class="form-control" placeholder="請輸入電話">                   
                  </div>                
                </div>
        	<div class="form-group">
                  <label class="col-md-2 control-label">地址：</label>
                  <div class="col-md-4">
                    <input type="password" name="address" value="" class="form-control" placeholder="請輸入密碼">                   
                  </div>
                  <label class="col-md-2 control-label">管理員：</label>
                  <div class="col-md-4">
                  	<span class="col-sm-6">
                    <input type="radio" name="admin" value="true" id="true" class="form-control"><label for="true">是</label></span>
                  	<span class="col-sm-6">
                    <input type="radio" name="admin" value="false" id="false" class="form-control"><label for="false">否</label></span>             
                  </div>                
                </div>
        	
        			<input type="submit" class="btn btn-outline-secondary" value="註冊">
        		  
        	</form>
        </div>
        <div class="col-md-4 col-sm-5">
          <div class="panel panel-primary">
            <div class="panel-heading">功能表</div>
            <div class="panel-body">
            
            
            
              <form action="Login" method="post"  role="form"   class="form-horizontal">
                <div class="form-group">
                  <label class="col-md-4 control-label">帳號：</label>
                  <div class="col-md-8">
                    <input type="text" name="username" value="" class="form-control" placeholder="請輸入帳號">                   
                  </div>                
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label">密碼：</label>
                  <div class="col-md-8">
                    <input type="text" name="password" value="" class="form-control" placeholder="請輸入密碼">                   
                  </div>                
                </div>
                <div class="form-group">
                	
                  	<span class="col-md-8 col-sm-7">
                    	<button type="submit" name="button" class="btn btn-primary btn-block">送出</button>
                    </span>	
                  </div>
                  </form>
                </div>
                
      
              

              
             </div>
           </div>
        </div>
        
      
      <!-- footer  -->
      <jsp:include page="../footer.jsp"></jsp:include>
      </div>
</body>
</html>
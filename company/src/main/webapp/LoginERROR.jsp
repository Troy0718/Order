<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>購物網站</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <!--[if lt IE 9]>
      <script src="bootstrap/js/html5shiv.min.js"></script>
      <script src="bootstrap/js/respond.min.js"></script>
    <![endif]-->
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/jquery-migrate.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<jsp:include page="header.jsp"></jsp:include>
	
	<div id="shop_main" class="row">
        <div class="col-md-8 col-sm-7">主內容區</div>
        <div class="col-md-4 col-sm-5">
          <div class="panel panel-primary">
            <div class="panel-heading">功能表</div>
            <div class="panel-body">
                <div class="alert alert-warning"> 登入失敗</div>
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
                  <label class="col-md-4"></label>
                  <div class="col-md-8">
                    <button type="submit" name="button" class="btn btn-primary btn-block">送出</button>
                  </div>
                </div>
                
              </form>

              
             </div>
           </div>
        </div>
      </div>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
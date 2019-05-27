 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700italic,700,800,800italic&subset=latin,vietnamese'
	rel='stylesheet' type='text/css' />
<link href="assets/styles/bootstrap.min.css" rel="stylesheet" />
<link href="assets/styles/font-awesome.min.css" rel="stylesheet" />
<link href="assets/styles/slick.css" rel="stylesheet" />
<link href="assets/styles/owl.carousel.min.css" rel="stylesheet" />
<script src="assets/js/jwplayer.js"></script>
<script src="assets/js/key.js"></script>
<script type="text/javascript">jwplayer.key = "5qMQ1qMprX8KZ79H695ZPnH4X4zDHiI0rCXt1g==";</script>
<!--main style-->
<link href="assets/styles/fonts.css" rel="stylesheet" />
<link href="assets/styles/site.css" rel="stylesheet" />
<link href="assets/styles/site-respon.css" rel="stylesheet" />
<!--end main style-->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
 
<title>CNPM-09</title>
</head>
<body>
	<%
String error = "";
		if (request.getAttribute("error") != null) {
			error = (String) request.getAttribute("error");
		}
		String usernamex = "", passwordx = "";
		if (request.getAttribute("usernamex") != null) {
			usernamex = (String) request.getAttribute("usernamex");
		}
		if (request.getAttribute("passwordx") != null) {
			passwordx = (String) request.getAttribute("passwordx");
		}
		%>
	<div id="wrapper">
		<div id="wrapper-in"> 
			<div class="clr"></div>
			<div id="main-content">
				<div class="register-form">
					<div class="lognin-bg">
						<div>
							<h1>👌 Zero-Nine 👎</h1>
							<form action="LoginServlet" method="post">
								<p style="color: red"><%=error%>
								<div class="form-group input-group">
									<div class="icon-input">
										<span class="icon-user"></span>
									</div>
									<input type="text" class="input-lognin"
										placeholder="Tên đăng nhập" name="ten_dang_nhap"
										value="<%=usernamex%>" />
								</div>
								<div class="form-group input-group">
									<div class="icon-input">
										<span class="icon-pass"></span>
									</div>
									<input type="password" class="input-lognin"
										placeholder="Mật khẩu" name="mat_khau" value="<%=passwordx%>" />
								</div>
								<input type="hidden" name="access" value="2" /> <input
									type="hidden" name="status" value="1" />
								<div class="form-group password-helper">
									<label class="label-pass"> <input name="remember_me"
										id="Checkbox1" value="Y" checked="checked" type="checkbox">
										Ghi nhớ đăng nhập
									</label> <a href="#">Quên mật khẩu</a>
								</div>
								<div class="form-group longin-btn">
									<input type="submit" class="button-btn" value="ĐĂNG NHẬP" />
								</div>
								</form>
								<div class="register-logn">
									Bạn chưa có tài khoản? <a href="dangky.jsp">Đăng ký ngay</a>
								</div>
								<div class="logn-bot">
									<center>
										<div class="fb-login-button" data-max-rows="9"
											data-size="medium" data-button-type="login_with"
											data-show-faces="true" data-auto-logout-link="true"
											data-use-continue-as="true"></div>
										<!--1.Click on Login with Google-->
										<!--2.Open Oauth 2.0 dialog-->
										<!--3.Select account google-->
										<div class="btn white darken-4 col s10 m4">
											<a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/CNPM/login-google&response_type=code
												&client_id=113725480180-gmu5ih7b05rhdo6d3bo9sfif0valf0n3.apps.googleusercontent.com&approval_prompt=force" style="text-transform: none">
												<div class="left">
													<img width="20px" alt="Google &quot;G&quot; Logo"
														src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/512px-Google_%22G%22_Logo.svg.png" />
												</div> Login with Google
											</a>
										</div>
									</center>

									</a>
								</div>
						</div>
					</div>
				</div>
			</div>
			 
			 
		</div>
 
	</div>
	<a href="#" class="scroll-to-top"><i
		class="glyphicon glyphicon-chevron-up"></i></a>
	<div id="runScript"></div>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.panel.mobile.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- main js -->
	<script src="assets/js/jquery.main.js"></script>

	<!-- end main js -->
	<script>
// Get the modal
var modal = document.getElementById('id01');
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</body>
</html>

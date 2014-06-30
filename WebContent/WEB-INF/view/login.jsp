<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%request.setCharacterEncoding("UTF-8"); 
response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta name="format-detection" content="telephone=no" />
	<meta name="viewport"
		content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=no;" />
	
	<title>1Pay.vn - Kết nối nhanh, thanh toán linh hoạt | Ket noi
		nhanh, thanh toan linh hoat</title>
	<link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
	<script>
		
	</script>
</head>
<body>
	<!-- 1PAY WEB -->
	<div id="wrapper">
		<!-- Web Top -->
		<div id="w_top">
			<div class="layout_1000">
				<!-- Header -->
				<c:import url="header.jsp"></c:import>
				<!-- / Header -->

				<!-- Body -->
				<div id="w_body">
					<div id="title">
						<h1>Đăng nhập</h1>
						
						<c:if test="${!empty model.account}">
							<span style="color: red;">Tài khoản đã tồn tại</span>
						</c:if>
					</div>
					<div id="account">
						<c:url var="accountRegistration" value="new-account.html" />
						<%-- <form:form id="registerForm" modelAttribute="account" method="post"
							action="${accountRegistration}"> --%>
							<form:form method="POST" commandName="loginForm">

								<%-- <form:errors path="*" cssClass="errorblock" element="div"/> --%>
								
							<table >
								<%-- <tr>
									<td><form:label path="id">Mã tài khoản</form:label></td>
									<td><form:input path="id" /></td>
								</tr> --%>
								<input type="hidden" name="status" value="1" />
								<tr>
									<td style="text-align: right;"><form:label path="id">Mã tài khoản: </form:label></td>
									<td style="text-align: left;"><form:input path="id" style="width: 40%; padding: 5px;" placeholder="Nhập mã tài khoản"/></td>
									<td><form:errors path="id" style="color: red;" cssClass="error" /></td>
								</tr>
								<tr>
									<td style="text-align: right;"><form:label path="pw">Mật khẩu: </form:label></td>
									<td style="text-align: left;"><form:password path="pw" style="width: 40%; padding: 5px;" placeholder="Mật khẩu"/></td>
									<td><form:errors path="pw" style="color: red;" cssClass="error" /></td>
								</tr>
								<tr>
									<td style="text-align: right;"><form:label path="">Giữ tôi đăng nhập: </form:label></td>
									<td style="text-align: left;"><form:checkbox path="" value="true"  /></td>
								</tr>
								
								
								<tr>
									<td></td>
									<td style="text-align: left;"><input type="submit" style="padding: 5px;" value="Đăng nhập" /></td>
								</tr>
								
								
								<br/>
								
								<tr >
									<td style="text-align: right;"></td>
									<td style="text-align: left; "></td>
								</tr>
								<tr >
									<td style="text-align: right;"></td>
									<td style="text-align: left; "><a><span style="color: blue;">Lấy lại mật khẩu</span></a></td>
								</tr>
							</table>
						</form:form>
					
					</div>
					<!-- <div class="r_01">
						<div class="col_01">
							<div class="mod_vieclammoi">
								<div id="hot_productslides" align="center">
									<iframe width="500" height="375"
										src="//www.youtube.com/embed/LcZ0zVNsfF4" frameborder="0"
										allowfullscreen></iframe>
									<a href="#"> <img src="images/slide_img_01.jpg" border="0" /></a>
									<a href="#"> <img src="images/slide_img_02.jpg" border="0" /></a>
									<a href="#"> <img src="images/slide_img_03.jpg" border="0" /></a>
									<div class="slides_container">
										<div>
											<iframe width="500" height="375" src="//www.youtube.com/embed/LcZ0zVNsfF4" frameborder="0" allowfullscreen></iframe>
										</div>
										<div>
											<a href="#"> <img src="images/slide_img_01.jpg" border="0" /></a>
										</div>

										<div>
											<a href="#"> <img src="images/slide_img_02.jpg" border="0" /></a>
										</div>

										<div>
											<a href="#"> <img src="images/slide_img_03.jpg" border="0" /></a>
										</div>
									</div>
									<a href="#" class="prev"></a> <a href="#" class="next"></a>
								</div>
							</div>
						</div>

						<div class="col_02">
							<div class="mod_dangkysrv">
								<h1>Kết nối nhanh, thanh toán linh hoạt</h1>
								<a href="/dich-vu.html" class="btn_khamphasrv">Khám phá ngay</a>
								hoặc <a href="/dang-ky.html">Đăng ký tài khoản</a> | <a
									href="/password_recovery.html">Lấy lại mật khẩu</a>
							</div>
						</div>
					</div>

					<div class="r_02">
						<div class="col_3">
							<div class="ad_title">Đơn kết nối</div>
							<div class="ad_des">Một kết nối duy nhất, đơn giản nhất cho
								mọi dịch vụ thanh toán.</div>
						</div>
						<div class="col_3">
							<div class="ad_title">Đa dịch vụ, đủ an toàn</div>
							<div class="ad_des">Hỗ trợ mọi phương thức thanh toán, cho
								mọi nền tảng thiết bị, ứng dụng, với công nghệ bảo mật và an
								toàn nhất.</div>
						</div>
						<div class="col_4">
							<div class="ad_title">Hoàn toàn minh bạch và uy tín</div>
							<div class="ad_des">Công cụ thống kê chi tiết minh bạch
								nhất với uy tín cao nhất.</div>
						</div>
					</div> -->
				</div>
				<!-- / Body -->
			</div>
		</div>
		<!-- / Web Top -->
		<c:import url="footer.jsp"></c:import>
		<!-- Web Foot -->
		
		<!-- End Web Foot -->
</body>
</html>

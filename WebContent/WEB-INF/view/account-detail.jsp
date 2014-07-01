<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	if(session.getAttribute("LOGIN") == null ){
		
			response.sendRedirect("login.html");
	
	} 
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
					<h1>Thông tin tài khoản &nbsp
					<a href='edit.html?id=${account.id }'>
						<img src="${pageContext.request.contextPath}/resources/images/edit.jpg" alt="" title="Sửa" width="30px" height="30px"/>
					</a>
					</h1>
					</div>
					<div id="account">
						<c:url var="accountRegistration" value="update-account.html" />
						<%-- <form:form id="registerForm" modelAttribute="account" method="post"
							action="${accountRegistration}"> --%>
						<%-- <form:form method="POST" commandName="editForm"> --%>
							<table class="edittable" border = "0">
								
								<%-- <input type="hidden" name="stt" value="${account.stt }" /> 
								<input type="hidden" name="id" value="${account.id }" /> 
								<input type="hidden" name="status" value="${account.status }" />  --%>
								
								<%-- <form:hidden path="stt" />
								<form:hidden path="id" />
								<form:hidden path="status" /> --%>
								<tr>
									<td style="text-align: right;">Mã tài khoản:</td>
									
									<td style="text-align: left;">
										<input type="text" readonly="readonly" style="width: 50%; padding: 5px;" value="${account.userName }"/>
										
									</td>
									
								</tr>
								
								<%-- <tr>
									<td style="text-align: right;"><form:label path="pw">Mật khẩu:</form:label></td>
									<td style="text-align: left;"><form:password path="pw"  value = "${account.pw }" style="width: 80%" placeholder="mật khẩu"/></td>
								</tr> --%>
								
								<tr>
									<td style="text-align: right;">Tên tài khoản:</td>
									<td style="text-align: left;">
										<input type="text" readonly="readonly" style="width: 50%; padding: 5px;" value="${account.name }"/>
									</td>
								</tr>
								<tr>
									<td style="text-align: right;">Địa chỉ:</td>
									<td style="text-align: left;">
										<input type="text" readonly="readonly" style="width: 50%; padding: 5px;" value="${account.address }"/>
									</td>
								</tr>
								<tr>
									<td style="text-align: right;">Ghi chú:</td>
									<td style="text-align: left;">
										<input type="text" readonly="readonly" style="width: 50%; padding: 5px;" value="${account.note }"/>
									</td>
								</tr>
								<tr>
									<td style="text-align: right;">Quyền tài khoản: </td>
									<td style="text-align: left;">
										<c:if test="${account.permission == 1}">
											<input type="text" readonly="readonly" style="width: 50%; padding: 5px;" value="Admin"/>
										</c:if>
										<c:if test="${account.permission == 2}">
											<input type="text" readonly="readonly" style="width: 50%; padding: 5px;" value="User"/>
										</c:if>
										
									</td>
								</tr>
								<!-- <tr>
									<td></td>
									<td><input type="submit" value="Cập nhật" /></td>
								</tr> -->
							</table>
						<%-- </form:form> --%>
					
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

<%@page import="com.hp.domain.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%request.setCharacterEncoding("UTF-8"); %>
    
    <%
/* session.setAttribute("LOGIN", null);
session.setAttribute("ACCOUNT", null); */

	/* if(session.getAttribute("LOGIN") != null ){
		Account account = (Account)session.getAttribute("ACCOUNT");
		if(account.getPermission() == 2){
			
			response.sendRedirect("detail.html?id=" + account.getStt());
		}
	} */
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

	<!-- Add-On Core Code (Remove when not using any add-on's) -->

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
						<h1>Danh sách tài khoản</h1>
					</div>
					<div id="tablehead">
					
						<div id="total">
							Tổng cộng có <b>${account.size() }</b> tài khoản
						</div>
						<div id="tools">
							<a href="register.html">
								<img  src="<c:url value="/resources/images/add.png" />" width="30px" height="30px" title="Thêm mới"/>
							</a>
							<img src="" alt="" />
						</div>
					</div>
					<div id="account">
						<table id="accountlist"  style="">
						<col width="5%"/>
						<col width="10%"/>
						<col width="15%"/>
						<col width="25%"/>
						<col width="20%"/>
						<col width="5%"/>
						<col width="10%"/>
						<col width="10%"/>
							<thead>
								<tr>
									<th class="thlist">Stt</th>
									<th class="thlist">Mã tài khoản</th>
									<th class="thlist">Tên tài khoản</th>
									<th class="thlist">Địa chỉ</th>
									<th class="thlist">Ghi chú</th>
									<th class="thlist">Quyền</th>
									<th class="thlist">Trạng thái</th>
									<th class="thlist">Hành động</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
								<c:when test="${param.page > 0 }">
								<c:forEach items="${account }" var="account" varStatus="status" 
											begin="${(param.page - 1) * 10}" end="${(param.page -1) * 10 + 10-1}">
								<tr>
									<td class="tdlist"><c:out value="${status.index +  1}"/></td>
									<td class="tdlist" style="text-align: left;"><a href="detail.html?id=${account.id }"><c:out value="${account.userName }"/></a></td>
									<td class="tdlist" style="text-align: left;"><c:out value="${account.name }"/></td>
									<td class="tdlist" style="text-align: left;"><c:out value="${account.address }"/></td>
									<td class="tdlist" style="text-align: left;"><c:out value="${account.note }"/></td>
									
									<td class="tdlist" >
									<c:choose>
										<c:when test="${account.permission == 1}">
											Admin
										</c:when>
										<c:when test="${account.permission == 2}">
											User
										</c:when>
										
									</c:choose>
									
									</td>
									
									<td class="tdlist" >
									<c:choose>
										<c:when test="${account.status == 1}">
											Đang hoạt động
										</c:when>
										<c:when test="${account.status == 2}">
											Không hoạt động
										</c:when>
										<c:when test="${account.status == 3}">
											Đã xóa
										</c:when>
									</c:choose>
									
									</td>
									<td class="tdlist">
										<a href="edit.html?id=${account.id }">
										<img src="${pageContext.request.contextPath}/resources/images/edit.jpg" alt="" title="Sửa" width="30px" height="30px"/>
										</a>  
										<a href='javascript:confirmDelete("delete.html?id=${account.id }")'>
										<img src="${pageContext.request.contextPath}/resources/images/delete.jpg" alt="" title="Xóa" width="30px" height="30px"/>
										</a>
									
									</td>
								</tr>
								</c:forEach>
								</c:when>
								<c:otherwise>
									<span style="color: red">Không có dữ liệu</span>
								</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					
					</div>
					
					<div id="pages">
						<ul class="pagefrmt">
						
						
							<li><a href="display.html?page=1" title="Về trang đầu"> <b>&lt&lt</b> &nbsp </a></li>
							
							<c:forEach items="${account }" var="account" varStatus="status" 
										begin="0" step="10">
							<fmt:parseNumber var="page" value="${status.index/10 + 1}" type="number" integerOnly="true"/>
							<%-- <fmt:formatNumber var="page" value="${status.index/10 + 1}" pattern="0"/> --%>
							<c:choose>
								<c:when test="${param.page == page }">
									<li ><span style="color: red"> [${page}] </span></li>
								</c:when>
								<c:otherwise>
									<li><a href="display.html?page=${page}"> ${page} </a></li>
								</c:otherwise>
							</c:choose>
							
							</c:forEach>
							<%-- <fmt:formatNumber var="endpage" value="${account/10 + 1}" pattern="0"/>
							<li><a href="account-list.html?page=${page }"> e </a></li> --%>
							
							<fmt:parseNumber var="endpage2" value="${account.size() / 10 + 1}" type="number" integerOnly="true"/>
							<li><a href="display.html?page=${endpage2}" title="Xuống trang cuối"> &nbsp <b>&gt&gt</b>  </a></li>
						</ul>
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

		<!-- Web Foot -->
		<c:import url="footer.jsp"></c:import>
		<!-- / Web Foot -->
	</div>
	<!-- / 1PAY WEB -->
	
</body>
</html>

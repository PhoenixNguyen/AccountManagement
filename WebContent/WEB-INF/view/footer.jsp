<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>

	<!-- Web Foot -->
		<div id="w_foot">
			<!-- Foot Menu -->
			<div id="foot_menu">
				<div class="layout_1000">
					<div class="foot_col">
						<ul>
							<li><a href="/dich-vu.html" class="footmenu_head">Dịch
									vụ</a></li>
							<li><a href="/dich-vu.html?n=sms" class="foot_link">SMS
									Charging</a></li>
							<li><a href="/dich-vu.html?n=card" class="foot_link">Card
									Charging</a></li>
							<li><a href="/dich-vu.html?n=wap" class="foot_link">Wap
									Charging</a></li>
							<li><a href="/dich-vu.html?n=iac" class="foot_link">In-App
									Charging</a></li>
							<li><a href="/dich-vu.html" class="foot_link">Direct
									Charging</a></li>
							<li><a href="/dich-vu.html" class="foot_link">Sub
									Charging</a></li>
						</ul>
					</div>
					<div class="foot_col">
						<ul>
							<li><a href="http://dev.1pay.vn/" class="footmenu_head">Nhà
									phát triển</a></li>
						</ul>
					</div>
					<div class="foot_col">
						<ul>
							<li><a href="#" class="footmenu_head">Cộng đồng</a></li>
							<li><a href="http://forum.1pay.vn" class="foot_link">Diễn
									đàn</a></li>
							<li><a href="http://facebook.com/1pay.vn" class="foot_link">Facebook</a></li>
							<li><a href="#" class="foot_link">Twitter</a></li>
							<li><a href="#" class="foot_link">Google+</a></li>
						</ul>
					</div>
					<div class="foot_col">
						<ul>
							<li><a href="#" class="footmenu_head">Giới thiệu</a></li>
							<li><a href="/who-am-i.html" class="foot_link">1Pay là
									gì?</a></li>
							<li><a href="/1pay-team.html" class="foot_link">Đội ngũ
									1Pay </a></li>
							<li><a href="/news/category.html" class="foot_link">Tin
									tức</a></li>
							<li><a href="/tuyen-dung.html" class="foot_link">Tuyển
									dụng</a></li>
						</ul>
					</div>
					<div class="foot_col">
						<ul>
							<li><a href="http://help.1pay.vn" class="footmenu_head">Hỗ
									trợ</a></li>
							<li><a href="http://help.1pay.vn" class="foot_link">Help
									Center</a></li>
							<li><a href="/dieu-khoan.html" class="foot_link">Điều
									khoản sử dụng</a></li>
							<li><a href="/chinh-sach-thanh-toan.html" class="foot_link">Chính
									sách thanh toán</a></li>
							<li><a href="/ban-quyen.html" class="foot_link">Bản
									quyền</a></li>
							<li><a href="/lien-he.html" class="foot_link">Liên hệ</a></li>
						</ul>
					</div>
					<div class="foot_mod">
						<div id="page-full-footer">
							<div id="locale-container" class="ui-button">
								<span id="locale-link" class="locale_link"><a>Việt
										Nam</a></span>
								<div id="locale-menu"
									class="sub-nav chat-bubble-bottom locale-list">
									<ul>
										<li><a href="?ver=vi" data-locale="vi"
											class="locale-option">Việt Nam</a></li>
										<li><a href="?ver=en" data-locale="en"
											class="locale-option">English</a></li>
										<!-- 
								<li><a data-locale="ja" class="locale-option">日本語</a></li>
								<li><a data-locale="ko" class="locale-option">한국어</a></li>
								 -->
									</ul>
									<div class="chat-bubble-arrow-border"></div>
									<div class="chat-bubble-arrow"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
						<a class="secure_geotrust">Bảo mật bởi</a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<!-- / Foot Menu -->
			<div id="foot_info">
				<div class="info_holder">Copyright © 2013 1Pay Co., Ltd. All
					rights reserved. Giấy phép MXH số 57/GXN-TTĐT.</div>
			</div>
		</div>
		<div class="fix-bar">
			<a href="mailto:info@1pay.vn" style="color: #FFF"><img
				src="/images/email.png"
				style="vertical-align: bottom; margin-right: 5px;" width="16px" /><strong>Email:</strong>
				info@1pay.vn</a> <img src="/images/phone.png"
				style="vertical-align: bottom; margin-right: 5px;" width="16px" /><strong>Hotline:</strong>
			<a href="tel:84964222628" style="color: #FFF">(+84) 964222628</a> <a
				href="skype:help.1pay?chat" style="color: #FFF"><img
				src="/images/skype.png"
				style="vertical-align: bottom; margin-right: 5px;" width="16px" /><strong>Skype:</strong>
				Hỗ trợ 1</a> <a href="ymsgr:sendim?help.1pay26&m=Chào+bạn"
				style="color: #FFF"><img src="/images/yahoo.png"
				style="vertical-align: bottom; margin-right: 5px;" width="16px" /><strong>Yahoo:</strong>
				hỗ trợ 2</a>
		</div>
		<!-- / Web Foot -->
		<!-- 

 -->
		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-42819651-1', '1pay.vn');
			ga('send', 'pageview');
		</script>
		<!-- End footer -->
		<script type="text/javascript">
		/*<![CDATA[*/
		/* jQuery(function($) {

		 $(function(){
		 $('#hot_productslides').slides({
		 preload: true,
		 preloadImage: 'images/loading.gif',
		 play: 5000,
		 pause: 2500,
		 hoverPause: true
		 });
		 });

		 }); */

		$(function() {
			$('#hot_productslides').slidesjs({
				width : 550,
				height : 350,
				navigation : false,
				start : 3,
				play : {
					auto : true
				}
			});
		});
		/*]]>*/
	</script>
	<!-- Create Menu Settings: (Menu ID, Is Vertical, Show Timer, Hide Timer, On Click ('all' or 'lev2'), Right to Left, Horizontal Subs, Flush Left, Flush Top) -->
	<script type="text/javascript">
		qm_create(0, false, 0, 250, false, false, false, false, false);
	</script>

	<!-- SlidesJS Optional: If you'd like to use this design -->
	<style>
.slidesjs-navigation {
	margin-top: 3px;
}

.slidesjs-previous {
	margin-right: 5px;
	float: left;
}

.slidesjs-next {
	margin-right: 5px;
	float: left;
}

.slidesjs-pagination {
	margin: 6px 0 0;
	/* float: right; */
	display: inline-block;
	list-style: none;
}

.slidesjs-pagination li {
	float: left;
	margin: 0 1px;
}

.slidesjs-pagination li a {
	display: block;
	width: 13px;
	height: 0;
	padding-top: 13px;
	background-image: url(images/pagination.png);
	background-position: 0 0;
	float: left;
	overflow: hidden;
}

.slidesjs-pagination li a.active,.slidesjs-pagination li a:hover.active
	{
	background-position: 0 -13px
}

.slidesjs-pagination li a:hover {
	background-position: 0 -26px
}

/* a:link,
  a:visited {
    color: #333
  }

  a:hover,
  a:active {
    color: #9e2020
  } */
.navbar {
	overflow: hidden
}
</style>
	<!-- End SlidesJS Optional-->
	<!--   
	<div id="eventModal" class="reveal-modal">
		<div>
			<a href="/news/item.html?i=16">			
				<img alt="" src="/images/event_momo_popup.png" border="0" width="500px"/>
			</a>
		</div>
		<div>
			<input type="button" name="cancel" value="Đóng" class="btn_greensmall modal_close" />
		</div>		
	</div>
	<script type="text/javascript">
			$('#eventModal').reveal({
					dismissmodalclass: 'modal_close'
			});
	</script>
	
	-->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>

	<link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
	
	<link href="<c:url value="/resources/css/account.css" />" rel="stylesheet" type="text/css" />
	<script src="<%=request.getContextPath()%>/resources/js/account.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/account.js" type="text/javascript"></script>
	
	
	<link href="<c:url value="/resources/css/daterangepicker.css" />" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/css/home_slider.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/css/1pay_style.css" />" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/css/reveal.css" />" rel="stylesheet" type="text/css" />
	<script src="<c:url value="/resources/js/jquery.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/date.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/daterangepicker.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery.slides.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/core_menu.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery.leanModal.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery.reveal.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery.blockUI.js" /> " type="text/javascript"></script>
	

</head>
<body>
	
	
	<!-- Add-On Core Code (Remove when not using any add-on's) -->

<style type="text/css">
.qmfv {
	visibility: visible !important;
}

.qmfh {
	visibility: hidden !important;
}
</style>

<script type="text/JavaScript">
	var qmad = new Object();
	qmad.bvis = "";
	qmad.bhide = "";
	
	
	/* function confirmDelete(url){
		if(confirm("Bạn chắc chắn muốn xóa") == true){
			window.location.href = url;
		}
		else
			false;
	} */
</script>

<!-- Add-On Settings -->
<script type="text/JavaScript">
	/*******  Menu 0 Add-On Settings *******/
	var a = qmad.qm0 = new Object();

	// IE Over Select Fix Add On
	a.overselects_active = true;
</script>
<script type="text/javascript">
	var Constants = {
		DO_NOT_ADD_A_TRAILING_COMMA : true
	};
	function global_report_exception(e, f, l, tb, force) {
		if (!window.reported_exception || force) {
			var stack_str = "";
			try {
				if (!tb) {
					var stack = get_stack_rep();
					stack.pop(); // remove global_report_exception
					stack.pop(); // remove onerror handler
					stack_str = stack.join("\n");
				}
			} catch (e) {
			}
			var log = function() {
				var parameters = {
					'e' : e,
					'f' : f || window.location.href,
					'l' : l,
					'loc' : window.location.href,
					'ref' : Constants.referrer,
					'tb' : tb || stack_str,
					'trace' : Trace && Trace.get()
				};
				new Ajax.DBRequest("/jse", {
					parameters : parameters,
					noAutonotify : true,
					no_watch : true
				});
			};
			if (typeof (Ajax) == 'undefined') {
				document.observe('script:loaded', log);
			} else {
				log();
			}
			window.reported_exception = e;
		}
	}

	// this constant gets set to true at the bottom of dropbox.js
	window.LoadedJsSuccessfully = false;
	window.onerror = function(e, f, l) {
		global_report_exception(e, f, l);
	};

	var old_onload = window.onload;
	window.onload = function() {
		if (!window.LoadedJsSuccessfully) {
			var url = encodeURIComponent(window.location.href);
			new Image().src = '/jse?e=failed+to+load+script&loc=' + url + '&f='
					+ url;
		}
		old_onload && old_onload();
	};
</script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('.filter_label').live(
						'click',
						function() {
							var lbClass = $(this).attr('class') + '';
							if (lbClass.indexOf('box_locketqua_hide') > 0) {
								lbClass = lbClass.replace(/ close/gi, ' open');
								$(this).attr(
										'class',
										lbClass.replace(
												/ box_locketqua_hide/gi, ''));
								$('.box_locketqua').fadeIn(300);
							} else {
								lbClass = lbClass.replace(/ open/gi, ' close');
								$(this).attr('class',
										lbClass + ' box_locketqua_hide');
								$('.box_locketqua').fadeOut(300);
							}
						});
			});
</script>
<script type="text/javascript">
	$(function() {
		$('a[rel*=leanModal]').leanModal({
			top : 200,
			closeButton : ".modal_close"
		});
	});
</script>

<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
	window.$zopim || (function(d, s) {
		var z = $zopim = function(c) {
			z._.push(c)
		}, $ = z.s = d.createElement(s), e = d.getElementsByTagName(s)[0];
		z.set = function(o) {
			z.set._.push(o)
		};
		z._ = [];
		z.set._ = [];
		$.async = !0;
		$.setAttribute('charset', 'utf-8');
		$.src = '//v2.zopim.com/?1Px2VMF7I6b2Sl4YNzp1R0AuCPcTQ54r';
		z.t = +new Date;
		$.type = 'text/javascript';
		e.parentNode.insertBefore($, e)
	})(document, 'script');
</script>
<!--End of Zopim Live Chat Script-->

<script type="text/javascript" src="/js/jquery.qtip-1.0.0-rc3.js"
	language="javascript"></script>
	
	
	<!-- Header -->
	<div id="w_header">
		<a href="/trang-chu.html" class="logo_1pay"></a>

		<div id="nav">
			<ul id="qm0" class="qmmc">
				<li><a class="qmparent nav_menu_slc" href="/AccountManagement">Trang
						chủ</a></li>

				<li><a class="qmparent nav_menu" href="/dich-vu.html">Dịch
						vụ</a>
					<ul>
						<li><a href="/dich-vu.html?n=sms">SMS Charging</a></li>
						<li><a href="/dich-vu.html?n=card">Card Charging</a></li>
						<li><a href="/dich-vu.html?n=wap">Wap Charging</a></li>
						<li><a href="/dich-vu.html?n=iac">In-App Charging</a></li>
						<li><a href="/dich-vu.html">Direct Charging</a></li>
						<li><a href="/dich-vu.html">Sub Charging</a></li>

					</ul></li>
				<li><a class="qmparent nav_menu" href="http://dev.1pay.vn">Nhà
						phát triển</a></li>


				<li><a class="qmparent nav_menu" href="http://forum.1pay.vn">Cộng
						đồng</a>
					<ul>
						<li><a href="http://forum.1pay.vn">Diễn đàn </a></li>
						<li><a href="http://facebook.com/1pay.vn">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">Google+</a></li>
					</ul></li>

				<li><a href="/news/category.html" class="qmparent nav_menu">Tin
						tức</a>
					<ul>
						<li><a href="/news/category.html">Tin hoạt động</a></li>
						<li><a href="/news/category.html">Sự kiện</a></li>
						<li><a href="/news/category.html">Bản tin ngành nội
								dung số</a></li>
					</ul></li>

				<li><a class="qmparent nav_menu" href="/lien-he.html">Hỗ
						trợ</a>
					<ul>
						<li><a href="http://help.1pay.vn">Help center</a></li>
						<li><a href="/dieu-khoan.html">Điều khoản sử dụng</a></li>
						<li><a href="/chinh-sach-thanh-toan.html">Chính sách
								thanh toán</a></li>
						<li><a href="/ban-quyen.html">Bản quyền</a></li>
						<li><a href="/lien-he.html">Liên hệ</a></li>
					</ul></li>
				<li class="qmclear">&nbsp;</li>
			</ul>
		</div>
		<div id="account-header">
			<ul class="nav">
				<li>
					<div class="down" id="top-login-wrapper"
						style="padding-top: 10px;">
						<a href="/protected/index.html"><img
							src="<c:url value="/resources/images/door-open-in.png" /> " border="0" align="absmiddle"
							hspace="5" /> Đăng nhập</a>
					</div>
				</li>
				<script type="text/javascript">
					$(document)
							.ready(
									function() {
										$('.ui-button')
												.live(
														'click',
														function() {
															var newClass = $(
																	this)
																	.attr(
																			'class')
																	+ '';
															if (newClass
																	.indexOf(' active') > 0) {
																newClass = newClass
																		.replace(
																				/ active/gi,
																				'');
															} else {
																newClass = newClass
																		.replace(
																				/ active/gi,
																				'')
																		+ ' active';
															}
															$(this)
																	.attr(
																			'class',
																			newClass);
														});
									});
				</script>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<!-- / Header -->	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>     
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>

<title>AI SHOP</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical" href="https://www.samsung.com/sec/">
<meta name="keywords" content="모바일 | TV | 가전 | IT">
<meta name="description" content="모바일 | TV | 가전 | IT">
<meta name="date" content="">
<meta name="sitecode" content="sec">


<meta name="twitter:card" content="Summary">
<meta name="twitter:site" content="@samsungtomorrow">
<meta name="twitter:creator" content="@samsungtomorrow">
<meta name="twitter:url" content="https://www.samsung.com/sec/">
<meta name="twitter:title" content="Samsung 대한민국 | 모바일 | TV | 가전 | IT">
<meta name="twitter:description" content="모바일 | TV | 가전 | IT">
<meta name="twitter:image" content="">

<meta property="og:url" content="https://www.samsung.com/sec/">
<meta property="og:image" content="">
<meta property="og:type" content="website">
<meta property="og:site_name" content="Samsung sec">
<meta property="og:locale" content="ko">
<meta property="og:title" content="Samsung 대한민국 | 모바일 | TV | 가전 | IT">
<meta property="og:description" content="모바일 | TV | 가전 | IT">
<meta property="og:country-name" content="sec">

<meta itemprop="name" content="Samsung sec">
<meta itemprop="image" content="">
<meta itemprop="url" content="https://www.samsung.com/sec/">
<meta itemprop="description" content="모바일 | TV | 가전 | IT">
<meta itemprop="keywords" content="모바일 | TV | 가전 | IT">

<link rel="dns-prefetch" href="//images.samsung.com">
<link rel="preconnect" href="//images.samsung.com"><link rel="shortcut icon" href="/sec/static/_images/favicon.ico">
<link rel="apple-touch-icon" href="" sizes="">


<link rel="stylesheet" href="./resources/introcss/jquery-ui.min.css">
<link rel="stylesheet" href="./resources/introcss/swiper.min.css">
<link rel="stylesheet" href="./resources/introcss/slick.css">
<link rel="stylesheet" href="./resources/introcss/reset.css">
<link rel="stylesheet" href="./resources/introcss/common.css">
<link rel="stylesheet" href="./resources/introcss/component.css">
<link rel="stylesheet" href="./resources/introcss/layout.css">
<link rel="stylesheet" href="./resources/introcss/content_part02.css">
<link rel="stylesheet" href="./resources/introcss/app.css">

<script src="./resources/introjs/jquery-3.3.1.min.js"></script>
<script src="./resources/introjs/jquery-ui.min.js"></script>
<script src="./resources/introjs/slick.js"></script>
<script src="./resources/introjs/slick-init.js"></script>
<script src="./resources/introjs/swiper.min.js"></script>
<script src="./resources/introjs/masonry.min.js"></script><!-- masonry js -->
<script src="./resources/introjs/jquery.blockUI.js"></script>
<script src="./resources/introjs/base.js"></script>
<script src="./resources/introjs/layerPop.js"></script>
<script src="./resources/introjs/netfunnel.js?20201019" charset="UTF-8"></script>
<script src="./resources/introjs/netfunnel_skin.js?20201019" charset="UTF-8"></script>
<script src="./resources/introjs/common.js"></script>
<script src="./resources/introjs/sticky.min.js"></script>
<script src="./resources/introjs/jquery.cookie.js"></script>
<script src="./resources/introjs/search.js"></script>
<script src="./resources/introjs/component.js"></script>
<script src="./resources/introjs/jquery.ui.touch-punch.min.js"></script>
<script src="./resources/introjs/clipboard.min.js"></script>
<script type="text/javascript">
	var checkActionTimeOut;
	$(document).ready(function () { 
		/*
		$.ajax({
			 url : "/sec/xhr/member/getSession"
			,type : "POST"
			,success : function(data) {
				var session = JSON.parse(data);
				if(session.mbrNo != 0){
					resetLoginTimeOut();
					$(document).on('click keypress' , 'body' , function(){
						resetLoginTimeOut();
					});
				}
			}
		});
		*/
		if('0' != 0){
			resetLoginTimeOut();
			$(document).on('click keypress' , 'body' , function(){
				resetLoginTimeOut();
			});
		}		
	});
	
	function resetLoginTimeOut() {
		window.clearTimeout(checkActionTimeOut);
		checkActionTimeOut = setTimeout(function() { // 30분 후 로그아웃
			location.href="/sec/member/logout/";
		}, 24*60*60*1000);
	}
</script>
<!-- s : AA 태깅 -->
<script type="text/javascript">
	var pageURL = window.location.href;
	var siteCode = "sec";
	
	var digitalData = {
			"page" : {
				"pageInfo" : {
					"siteCode" : siteCode
					, "siteSection" : ""
					, "pageName" : ""
					, "pageURL" : pageURL
					, "pageTrack" : "home"
					, "version" : "KDP"
				}
				, "pathIndicator" : {
					"depth_2" : ""
					, "depth_3" : ""
					, "depth_4" : ""
					, "depth_5" : ""
				}
			}
			, "user" : {
				"loginStatus" : ""
			}
			, "product" : {
				"category" : ""
				, "model_code" : ""
				, "model_name" : ""
				, "displayName" : ""
				, "pvi_type_code" : ""
				, "pvi_type_name" : ""
				, "pvi_subtype_code" : ""
				, "pvi_subtype_name" : ""
			
			}
		}
	
	// depth Info.
	var depth = window.location.href.split("/").length;
	var depth_last = window.location.href.split("/")[depth-1];
	if(depth_last =="" || depth_last.charAt(0)=="?"){
	    depth -= 1;
	}
	
	// set site section value
	if((digitalData.page.pathIndicator.depth_2 != "")||(digitalData.page.pageInfo.pageTrack == "flagship pdp")){	    
		if(digitalData.page.pathIndicator.depth_2 == "shop" || digitalData.page.pathIndicator.depth_2 == "my account"){
			digitalData.page.pageInfo.siteSection = siteCode + ":" + digitalData.page.pathIndicator.depth_2;
	    }else{
	    	digitalData.page.pageInfo.siteSection = siteCode + ":consumer"; //product page
	    }
	}else if(depth == 4){ 
	    digitalData.page.pageInfo.siteSection = siteCode + ":home"; //home
	}else{
	     digitalData.page.pageInfo.siteSection = siteCode + ":" + window.location.href.split("/")[4];
	}
	
	// set product category value
/* 	if(digitalData.page.pathIndicator.depth_3 != ""){
	    digitalData.product.category = digitalData.page.pathIndicator.depth_3;
	} */
	
	// set pathIndicator(not product page)
	if(digitalData.page.pathIndicator.depth_2 == ""){
	    if(depth >= 5) digitalData.page.pathIndicator.depth_2 = window.location.href.split("/")[4].toLowerCase();
	    if(depth >= 6) digitalData.page.pathIndicator.depth_3 = window.location.href.split("/")[5].toLowerCase();
	    if(depth >= 7) digitalData.page.pathIndicator.depth_4 = window.location.href.split("/")[6].toLowerCase();
	    if(depth >= 8) digitalData.page.pathIndicator.depth_5 = window.location.href.split("/")[7].toLowerCase();
	}
	
	// set pageName
	var pageName = siteCode;
	if(digitalData.page.pathIndicator.depth_2 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_2;
	if(digitalData.page.pathIndicator.depth_3 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_3;
	if(digitalData.page.pathIndicator.depth_4 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_4;
	if(digitalData.page.pathIndicator.depth_5 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_5.replace(/^\s+|\s+$/gm,'');
	
	// check PD, GPD
	var pageTrackName = digitalData.page.pageInfo.pageTrack;
	if(pageTrackName == "product detail" || pageTrackName == "generic product details"){
	    pageName += ":" + digitalData.product.model_code;
	    var displayName = "".replace(/(<([^>]+)>)/gi, "");
	    digitalData.product.displayName = displayName;
	}
	digitalData.page.pageInfo.pageName = pageName;
	
	</script>
	<script async src="//assets.adobedtm.com/c8a575b84bb9/0d8938615268/launch-160c25cdcd93.min.js"></script>
<!-- e : AA 태깅 -->


<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NVX3V74');</script>
<!-- End Google Tag Manager -->

<script>
function chat_open() {
	fcTrack('click','floating chat:chat bot');
	var popupX = (window.screen.width / 2) - (356 / 2);
    var popupY = (window.screen.height / 2) - (750 / 2);
    window.open('/sec/chatbot/', 'chatbot', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
}

function chat_open2() {
	fcTrack('click','floating chat:chat online');

	var gType = Math.round(Math.random() * 1) ? 'm' : 'f';

	var popupX = (window.screen.width / 2) - (356 / 2);
    var popupY = (window.screen.height / 2) - (750 / 2);
    window.open('/sec/chatbot/?type=ep&c='+ gType, '_chatbot2', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
}

function chat_open3() {
	fcTrack('click','floating chat:offline store');
}

function floating_open() {
	fcTrack('click','floating chat');
}
logger("prd");

$(document).ready(function(){
    var userAgent=navigator.userAgent.toUpperCase();
    if(userAgent.indexOf("SECAPP")>-1){
            $("#header").hide();
    }
});

</script>

<script>
	viewportChange();
</script>

	<script src="./resources/introjs/lozad.min.js"></script>
	<script src="./resources/introjs/polyfill.min.js"></script>
	<script type="text/javascript">
	$(function() {
    	$(".pg-location").hide();
    	
    	const observer = lozad();
    	observer.observe();
    	$(window).resize(function(){
    		observer.observe();	
    	});
    });
    
	var b2cMainApp = {
		slideReview: function () {
			var targetSlide = $(".b2c-box-review .slide-box");
			targetSlide.slick({
				autoplay: true,
				dots: true,  // Indicator
				arrows: true,
				useCSS: false,
				easing: 'easeInOutQuad',
				slidesToShow: 1,
				slidesToScroll: 1,
				useCSS: false,
				easing: 'easeInOutQuad',
				autoplaySpeed: 3000,  // Interval 설정시 클래스 같이 삽입
				appendDots: targetSlide.siblings(".slider-controls").find(".wrap-controls").addClass("type-title"),  // Custom Indicator
				customPaging: function(slider, index) { // Text Indicator의 경우 추가
					return "<button></button>";
				},
				responsive: [
				{
					breakpoint: 801,
					settings: {
						autoplay: false,
					}
				}]
			});
			
			var slick = $(".b2c-box-review .slider-controls .wrap-controls .slick-dots").find("li")
			
			for(var i=0; i<slick.length; i++) {
				slick.eq(i).find("button").attr("data-omni", "rolling:index_" + (i+1));
			}
		},
		init: function () {
			var that = this;
			that.slideReview();
		}
		
	};

	$(document).ready(function () {
		b2cMainApp.init(); // b2c main
		
		// autoplay: true 일 때 재생 버튼
        $(".review-slide .slide-play").click(function(){
            $(this).parent().prev(".slick-slider").slick("slickPlay");
            $(this).parent().removeClass("paused");
            $(this).hide().siblings(".slide-pause").show();

            var video = $(this).parent().prev(".slick-slider").find(".slick-active video");
            if(video.length > 0) video.get(0).play();
        });
        // autoplay: true 일 때 일시정지 버튼
        $(".review-slide .slide-pause").click(function(){
            $(this).parent().prev(".slick-slider").slick("slickPause");
            $(this).parent().addClass("paused");
            $(this).hide().siblings(".slide-play").show();

            var video = $(this).parent().prev(".slick-slider").find(".slick-active video");
            if(video.length > 0) video.get(0).pause();
		});
		
		
	});
		
	
	$(window).on('load', function() {
		$(".pcd-item .desc a").addClass("btn-link");
	});

	function compLayerOpenPlay(no, url) {
		var obj = $(".pcd-item[data-no=" + no + "]");
		
		$("#videoLayer .video > iframe").attr("src", url);
		$("#videoLayer .alt-tit").text($(obj).find(".tit").text());
		$("#videoLayer .alt-content").text($(obj).find(".desc").text());

		$("#videoBtn").trigger("click");
	}
	
	$(function() {
		// 영상 팝업 닫을 시 영상 멈춤
	    $(document).on("click", ".popup-comp-player .pop-close, #mask.video-player", function(e) {
			e.preventDefault();
			if($(this).parents(".popup-comp-player").length > 0) {
				var video = $(this).parents(".popup-comp-player").find("video");
				if (video.length > 0) video.get(0).pause();
			}
			
			$("#videoLayer .video > iframe").attr("src", "");
			$("#videoLayer .alt-tit").text("");
			$("#videoLayer .alt-content").text("");
		});
	});
	function setMasonryPcd() {
		var masonryPcd = new Masonry(".pcd-list", {
			itemSelector: ".pcd-item",
		});
	}
	
	// 메인에서만 재정의...
	var vodPlayer = {
		ytApi : null,
		obj : {},
		accountId : '923136708001',
		playerId : 'BJmCHrmIb',
		apiSet : function() {
			var tag = document.createElement('script');
			var firstScriptTag = document.getElementsByTagName('script')[0];
			tag.src = "https://www.youtube.com/iframe_api";
			vodPlayer.ytApi = tag;
			firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
		},
		create : function(vodId, tagId, vodType, auto, loadCallBack, loopTF) {
			var autoStr = String(auto);
			var scrollTop = window.scrollY || window.pageYOffset || document.body.scrollTop + (document.documentElement && document.documentElement.scrollTop || 0);
			var winH = window.innerHeight + scrollTop;
			vodPlayer.obj[tagId] = {}
			loopTF = (loopTF) ? 1 : 0;
			if(vodType == 'video') {
				vodPlayer.vid(vodId, tagId, autoStr, loadCallBack, {
					'winH' : winH,
					'scrollTop' : scrollTop
				}, loopTF);
			} else if(vodType == 'youtube') {
				vodPlayer.yt(vodId, tagId, autoStr, loadCallBack, {
					'winH' : winH,
					'scrollTop' : scrollTop
				}, loopTF);
			}
			if(vodType == 'bc') {
				vodPlayer.bc(vodId, tagId, autoStr, loadCallBack, {
					'winH' : winH,
					'scrollTop' : scrollTop
				}, loopTF);
			}
			vodPlayer.obj[tagId]['sort'] = vodType;
		},
		vid: function (vodId, tagId, auto, loadCallBack, doc, loopTF) {
			var vodWrap = document.querySelector('#'+tagId);
			var mobState = false;
			var mobSrc = null;
			var vodSrc = vodId;
			if(device.val == 'm' && vodWrap.dataset.mSrc) {
				mobSrc = vodWrap.dataset.mSrc;
				vodSrc = vodWrap.dataset.mSrc;
				mobState = true;
			}

			var vod = document.createElement('video');
			vod.setAttribute('id', tagId);
			vod.setAttribute('playsinline', '');
			if (loopTF) {
				vod.setAttribute('loop','');
			}

			var source = '<source data-src="'+vodSrc+'" type="video/mp4">';
			vod.setAttribute('class', vodWrap.className + " lozad");
			
			vod.innerHTML = source;
			vodWrap.parentNode.insertBefore(vod, vodWrap);
			vodWrap.parentNode.removeChild(vodWrap);

			vodPlayer.obj[tagId]['vod'] = vod;
			
			window.addEventListener('resize', function(){
				if(mobState == false) {
					if(mobSrc != null && device.val == 'm') {	
						vod.setAttribute('src', vodWrap.dataset.mSrc);
						mobState = true;
					}
				} else {
					if(device.val != 'm') {	
						vod.setAttribute('src', vodId);
						mobState = false;
					}
				}
			});
			vod.addEventListener('play', function(){
				vodPlayer.obj[tagId]['state'] = 'played';
			});
			vod.addEventListener('pause', function(){
				if(this.currentTime == 0 || this.currentTime == this.duration) {
					vodPlayer.obj[tagId]['state'] = 'ready';
				} else {
					vodPlayer.obj[tagId]['state'] = 'pause';
				}
			});
			vodPlayer.vidReady(vod, tagId, auto, doc, loadCallBack);
		},
		vidReady: function(vod, tagId, auto, doc, loadCallBack) {
			var readyEl = null;
			if (device.os == "ios") {
				canplayProc();
			} else {
				vod.addEventListener("canplay", canplayProc);
			}
			function canplayProc() {
				vodPlayer.obj[tagId]["state"] = "ready";
				if (typeof loadCallBack != "undefined" && loadCallBack)
					if (typeof loadCallBack == "function")
						loadCallBack();
					else if (loadCallBack)
						eval(loadCallBack);
				if (auto == "true") {
					vod.muted = true;
					readyEl = $("#" + tagId);
					if (readyEl.offset().top < doc.winH && doc.scrollTop < readyEl.offset().top + readyEl.outerHeight())
						if (readyEl.closest(".carousel-container").length == 0)
							vod.play();
					vodPlayer.scrollControl(readyEl, tagId)
				} else
					vod.setAttribute("controls", "")
			}
		},
		yt: function (vodId, tagId, auto, loadCallBack, doc, loopTF) {
			var playlistId = (loopTF) ? vodId : '';
			if(vodPlayer.ytApi == null) vodPlayer.apiSet('youtube');
			document.querySelector('#' + tagId).parentNode.classList.add('ifrm');
			document.querySelector('#' + tagId).parentNode.classList.add('youtube');
			var readyEl = null;
			var option = {
				width: '100%',
				height: '100%',
				videoId: vodId,
				playerVars : { 
					'showinfo' : 0,
					'rel' : 0,
					'playsinline': 1,
					'loop': loopTF,
					'playlist': playlistId
				},
				events : {
					'onReady': function (event) {
						vodPlayer.obj[tagId]['state'] = 'ready';
						readyEl = $('#'+tagId);
						if(auto == 'true') {
							if(device.val !== 'p') event.target.mute();
							if (readyEl.offset().top < doc.winH && doc.scrollTop < readyEl.offset().top + readyEl.outerHeight()) {
								if(readyEl.closest('.carousel-container').length == 0) {
									setTimeout(function(){
										event.target.playVideo();
									},100);
								}
							}
							vodPlayer.scrollControl(readyEl, tagId);
						}
						if(typeof loadCallBack != 'undefined' && loadCallBack){
							if(typeof loadCallBack == 'function'){
								loadCallBack();
							} else {
								if(loadCallBack) { eval( loadCallBack ); }
							}
						}
						// readyEl[0].insertAdjacentHTML('beforebegin', '<p class="playTime">'+event.target.getDuration()+'</p>');
					},
					'onStateChange' : function(event) {
						if(event.data === 1) {
							vodPlayer.obj[tagId]['state'] = 'played';
						} else if(event.data === 2) {
							vodPlayer.obj[tagId]['state'] = 'pause';
						} else if(event.data === 0 || event.data == -1 || event.data == 5) {
							vodPlayer.obj[tagId]['state'] = 'ready';
						}
					}
				}
			}

			try {
				vodPlayer.obj[tagId]['vod'] = new YT.Player(tagId, option);
				vodPlayer.obj[tagId]['sort'] = 'youtube';
			} catch ($error) {
				setTimeout(function(){vodPlayer.create(vodId, tagId, 'youtube', auto, loadCallBack, loopTF)}, 100);
			}
		},
		bc: function (vodId, tagId, auto, loadCallBack, doc, loopTF) {
			document.querySelector('#' + tagId).parentNode.classList.add('brightcove');
			if (!loopTF) loopTF = false;
			var vodWrap = document.querySelector('#'+tagId);
			var vodParent = vodWrap.parentNode;
			var readyEl = null;
			var tag = document.createElement('script');
			tag.src = "https://players.brightcove.net/"+vodPlayer.accountId+"/"+vodPlayer.playerId+"_default/index.min.js";
			var playerHTML =
				'<video id="' + tagId + '" data-video-id="' + vodId +
				'"  data-account="' +
				vodPlayer.accountId +
				'" data-player="' +
				vodPlayer.playerId;
			if (loopTF)
				playerHTML = playerHTML + '" loop="' + loopTF;
			playerHTML = playerHTML + '" data-embed="default" class="video-js" controls></video>';
			
			vodParent.insertAdjacentHTML('afterbegin', playerHTML);
			vodParent.insertBefore(tag, vodWrap);
			vodParent.removeChild(vodWrap);

			tag.onload = callback;

			function callback() {
				readyEl = $('#'+tagId);

				vodPlayer.obj[tagId]['vod'] = bc(tagId);

				vodPlayer.obj[tagId].vod.on("canplay", function() {
					var _this = this;
					vodPlayer.obj[tagId]['state'] = 'ready';
					if(auto == 'true') {
						if(device.val !== 'p') _this.muted(true);
						if(readyEl.offset().top < doc.winH && doc.scrollTop < readyEl.offset().top + readyEl.outerHeight()) {
							if(readyEl.closest('.carousel-container').length == 0) {
								setTimeout(function(){
									_this.play()
								},100);
							}
						}
						vodPlayer.scrollControl(readyEl, tagId);
					}
					if(typeof loadCallBack != 'undefined' && loadCallBack){
						if(typeof loadCallBack == 'function'){
							loadCallBack();
						} else {
							if(loadCallBack) { eval( loadCallBack ); }
						}
					}
					// readyEl[0].insertAdjacentHTML('beforebegin', '<p class="playTime">'+_this.cache_.duration+'</p>');
				});
				
				vodPlayer.obj[tagId].vod.on('play', function(){
					vodPlayer.obj[tagId]['state'] = 'played';
				});
				vodPlayer.obj[tagId].vod.on('pause', function(){
					if(this.cache_.currentTime == 0 || this.cache_.currentTime == this.cache_.duration) {
						vodPlayer.obj[tagId]['state'] = 'ready';
					} else {
						vodPlayer.obj[tagId]['state'] = 'pause';
					}
				});
			}
		},
		scrollControl: function (el, tagId) { // 화면 내에 있을때만 플레이 되도록 제어
			window.addEventListener('scroll', function () {
				var scrollTop = window.scrollY || window.pageYOffset || document.body.scrollTop + (document.documentElement && document.documentElement.scrollTop || 0);
				var winH = window.innerHeight + scrollTop;
				if(el.offset().top < winH && scrollTop < el.offset().top + el.outerHeight()) {
					if(vodPlayer.obj[tagId].state !== 'played') {
						if(el.closest('.carousel-container').length == 0) vodPlayer.play(tagId);
					}
				} else {
					if(vodPlayer.obj[tagId].state === 'played') vodPlayer.stop(tagId);
				}
			});
		},
		play : function(vodId) {
			if(vodPlayer.obj[vodId] != undefined) {
				// 영향을 최소화 하기 위해서 video 랑 bc 분기처리
				if(vodPlayer.obj[vodId]['sort'] == 'video') { // video일 때 lazy load 일 경우 state 체크 불가
					if ($("#" + vodId).hasClass("lozad")) {
						while (vodPlayer.obj[vodId]['state'] != 'ready') {
							setTimeout(function(){vodPlayer.play(vodId)}, 300)
							return;
						}
						if (vodPlayer.obj[vodId]['state'] == 'ready') {
							setTimeout(function(){vodPlayer.obj[vodId]['vod'].play()}, 100);
						}
					} else {
						if(vodPlayer.obj[vodId]['state'] == 'ready') {
							setTimeout(function(){vodPlayer.obj[vodId]['vod'].play()}, 100);
						}
					}
				} else if (vodPlayer.obj[vodId]['sort'] == 'bc') {
					if(vodPlayer.obj[vodId]['state'] == 'ready') {
						setTimeout(function(){vodPlayer.obj[vodId]['vod'].play()}, 100);
					}
				} else if(vodPlayer.obj[vodId]['sort'] == 'youtube') {
					if(vodPlayer.obj[vodId]['state'] == 'ready') {
						setTimeout(function(){vodPlayer.obj[vodId]['vod'].playVideo()}, 100);
					}
				}
			}
		},
		pause : function(vodId) {
			if(vodPlayer.obj[vodId] != undefined){
				if(vodPlayer.obj[vodId]['sort'] == 'video' || vodPlayer.obj[vodId]['sort'] == 'bc') {
					vodPlayer.obj[vodId]['vod'].pause();
				} else if(vodPlayer.obj[vodId]['sort'] == 'youtube') {
					vodPlayer.obj[vodId]['vod'].pauseVideo();
				}
			}
		},
		stop : function(vodId) {
			if(vodPlayer.obj[vodId] != undefined){
				if(vodPlayer.obj[vodId]['sort'] == 'video') {
					vodPlayer.obj[vodId]['vod'].pause();
					vodPlayer.obj[vodId]['vod'].currentTime = 0;
				} else if(vodPlayer.obj[vodId]['sort'] == 'youtube') {
					vodPlayer.obj[vodId]['vod'].stopVideo();
				} else if(vodPlayer.obj[vodId]['sort'] == 'bc') {
					vodPlayer.obj[vodId]['vod'].currentTime(0);
					vodPlayer.obj[vodId]['vod'].pause();
				}
			}
		},
		setAccount : function(accountId, playerId) {
			vodPlayer.accountId = accountId;
			vodPlayer.playerId = playerId;
		}
	}
	</script>
  <script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"SJ-ee857139-03c3-4e17-8a40-41368c6449ef","rua.cook":"true","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"true","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
                          <script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="VRZKC-5BSTD-4EWS3-R2J59-B8GYB",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"VRZKC-5BSTD-4EWS3-R2J59-B8GYB",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e="true"=="true"?1:0,t="cookiepresent",n="pgwal5axzesdsygyk3kq-f-9e1199f48-clientnsv4-s.akamaihd.net",i={"ak.v":"31","ak.cp":"143520","ak.ai":parseInt("293013",10),"ak.ol":"0","ak.cr":2,"ak.ipv":4,"ak.proto":"h2","ak.rid":"38e394b3","ak.r":40612,"ak.a2":e,"ak.m":"x","ak.n":"essl","ak.bpcip":"121.172.5.0","ak.cport":8075,"ak.gh":"23.201.35.117","ak.quicv":"","ak.tlsv":"tls1.2","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1624790741","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==TKkNdbndqIqgBEArzXxV/RzJ+mJjK1BImsiZLlXqiJg7qOBjyBUltog2VzVcrzAYgN5NiJLAN+/3y9btwsxjO5H8GitLKGAcDVXPrln9BRBYsKiqkClXEaIzkG4rNw/NeK9U++VYPOmaI8URjmgxQcUcOkJMq6ERt4OsPFejhYwRfer+1whFRNnl/g10ZBg9J81qfB7BNbqHqG5vzFQ8R9tH/+6aVUKXSbMBCPb7VNadNEBu0kf55QCV+SHXhE9OjqD85Q6V/Ww5v5fg6dNOIvMshKeuXky9R3gUWH0Tiz3ldsRVRkw3qrEYTa4QEQV9roVLGr/3danbUIjXtg7fPH0+EkPSnmXUEPc9futPyQm4nb4ExhYqy7z/+FjR/iBRrFpZqz2gjpn/tsdw0QiU60csrvQNtqKbYcWfEnNaz4Q=","ak.pv":"2233","ak.dpoabenc":""};if(""!==t)i["ak.ruds"]=t;var _={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))i["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(i)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:i,akDNSPreFetchDomain:n,init:function(){if(!_.i){var a=BOOMR.subscribe;a("before_beacon",_.av,null,null),a("onbeacon",_.rv,null,null),_.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script></head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NVX3V74"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- s : 스킵 -->
	<div id="skip_content">
		<a href="#container">본문 바로가기</a>
	</div>
	<!-- e : 스킵 -->

	<div id="wrap">
		<!-- s : 머리글 영역 -->
			<script>
		$(document).ready(function(){
			getSessionInfo();
			getCartCnt();
		});
		var apiFlag = 0;
		var clipboard = new ClipboardJS('#lUrl');
		clipboard.on('success', function(e) {
			let alertData = {
					 title: ""
					,content : "링크가 복사되었습니다." 
					,callback : "" 
					,btnText : "확인"
				};
				commonAlert(alertData);
				openLayer('commonAlert');
		});
		clipboard.on('error', function(e) {
			let alertData = {
					 title: ""
					,content : "다시 시도하여 주십시오." 
					,callback : "" 
					,btnText : "확인"
				};
				commonAlert(alertData);
				openLayer('commonAlert');
		});
		$(document).on('click' , '.link-cart' , function(){
			var options = {
					url : '/sec/xhr/order/gnbCartList' ,
					dataType : "html" , 
					done : function(data){
						$(".gnb-cartList").html(data);
				}
			}
			ajax.call(options);
		});
		
		// 뒤로가기 시 이벤트
		$(window).bind("pageshow", function(event){
			if(event.originalEvent.persisted || window.performance && window.performance.navigation.type == 2){
				getCartCnt();
			}
		});
		
		function getSessionInfo() {
			$.ajax({
				 url : "/sec/xhr/member/getSession"
				,type : "POST"
				,success : function(result) {
					result = JSON.parse(result);
					if (result.mbrNo == "0") {
						$("input[name=useLogin]").val("N");
						$(".link-login i").addClass("ico-people");
						$(".loginAfter").remove();
					} else {
						$("input[name=useLogin]").val("Y");
						$(".link-login i").addClass("ico-people-logged");
						$(".loginBefore").remove();
						
						var htmlMo = "안녕하세요! <span>" + result.mbrNm + "</span>님";
						var htmlPc = "안녕하세요! " + result.mbrNm + "님";
						$(".loginAfter .welcomeMsg").html(htmlMo);
						$(".loginAfter .greet-txt").html(htmlPc);
					}
				}
			});
		}
		
		function getCartCnt() {
			$.ajax({
				 url : "/sec/xhr/order/gnbCartCount"
				,type : "POST"
				,success : function(result) {
					if (result > 0) {
						$('.cart-inner-count').show();
						$('.cart-inner-count').text(result);
					}
					else {
						$('.cart-inner-count').hide();
					}
				}
			});
		}
		
		function getApiMemid(sessionInfo) {
			var jsonResult = JSON.stringify(sessionInfo);
			$.ajax({
				 url : "/sec/xhr/member/getMemberShipNo"
				, type : "POST"
				, data : { mbrNo : sessionInfo.mbrNo, loginId : sessionInfo.loginId}
				, success : function(result) {
					apiFlag = result.updateCnt;
				}
			});
		}
	</script>
	<input type="hidden" id="loginYn" value="" />
	<header id="header" >
		<div class="s-inner">
			<a href="/sec/" class="logo"><img src="/sec/static/_images/common/logo_samsung_black.svg" alt="AI SHOP" /></a>
				<div class="new-gnb">
				<nav class="gnb">
					<ul class="gnb1depth">
						<li>
							<a href="#" aria-controls="700000112-menu" aria-selected="false" data-omni="Product" >제품</a>
							<div class="gnb2depth">
								<div class="inner">
									<ul class="list">
										<li >
											<a href="#" aria-selected="false" data-omni="Product:new" >신제품<span class="flag-new">NEW</span></a>
											<div class="gnb3depth new-prd-list">
												<div class="prd-list-wrap">
													<div class="main-prd">
															<a href="https://www.samsung.com/sec/store-model/new-galaxy-book/launching/" class="rec-link" aria-selected="false" data-omni="Product:new:Galaxy Book Pro I Pro 360<br>launching">
																	<span class="pic-wrap">
																	<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/169bf435-7904-4d57-a667-81b1c75988b2.jpg?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/8747ee88-ee97-4fb4-9b16-05399154cbdf.jpg?$ORIGIN_JPG$"></span>
																	</span>
																
																<span class="txt-grp">
																	<span class="tit theme-blk">Galaxy Book I Pro I Pro 360<br>런칭</span>
																	<span class="desc theme-blk">삼성카드 5% 청구할인<br>+ 리뷰 참여 시 노트북 스탠드 증정</span>
																</span>
															</a>
														</div>
													<div class="sub-prd num-1">
															<a href="https://www.samsung.com/sec/smartphones/galaxy-s21-5g-g991/SM-G991NZVEKOO/" class="rec-link" aria-selected="false" data-omni="Product:new:Galaxy S21 5G">
																	<span class="pic-wrap">
																	<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/356ec277-90af-4fbd-a35d-1438e6fe6973.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/0abf5473-66f9-4dd1-a687-cabd724fc9d5.png?$ORIGIN_JPG$"></span>
																	</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"><span>Galaxy S21 5G</span></span>
																	<span class="desc theme-blk">삼성닷컴에서 중고폰 추가보상 혜택으로 만나보세요!</span>
																</span>
															</a>
														</div>
													<div class="sub-prd num-2">
															<a href="https://www.samsung.com/sec/store-model/2021bespoke/buy/" class="rec-link" aria-selected="false" data-omni="Product:new:BESPOKE Refrigerator">
																	<span class="pic-wrap">
																	<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/c5b2c744-e142-4f1c-836b-d34634c5441d.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/2e1a2441-910f-419f-95d5-0333b0dca3a9.png?$ORIGIN_JPG$"></span>
																	</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"><span>BESPOKE 냉장고</span></span>
																	<span class="desc theme-blk">21년 BESPOKE 냉장고의<br>새로운 컬러를 만나보세요</span>
																</span>
															</a>
														</div>
													<div class="sub-prd num-3">
															<a href="https://www.samsung.com/sec/store-model/lifestyletv2021/launching/" class="rec-link" aria-selected="false" data-omni="Product:new:Lifestyle TV">
																	<span class="pic-wrap">
																	<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/7c366c33-a3c8-4012-95df-cad7f1316d4b.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/affe3cb1-1925-4f72-8506-4fd49b78fb66.png?$ORIGIN_JPG$"></span>
																	</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"><span>Lifestyle TV</span></span>
																	<span class="desc theme-blk">당신을 위한<br>Lifestyle TV를 만나보세요</span>
																</span>
															</a>
														</div>
													<div class="sub-prd num-4">
															<a href="https://www.samsung.com/sec/air-conditioners/all-air-conditioners/?BESPOKE%20gallery+BESPOKE%20Classic" class="rec-link" aria-selected="false" data-omni="Product:new:BESPOKE Air conditioning gallery">
																	<span class="pic-wrap">
																	<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/2e2c897d-f76b-4d77-8f77-6eac63fc0aa6.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/afe07b95-f201-4592-9435-7746f90c9ef0.png?$ORIGIN_JPG$"></span>
																	</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"><span>BESPOKE 무풍에어컨 갤러리</span></span>
																	<span class="desc theme-blk">BESPOKE 무풍에어컨 갤러리의<BR>특별함을 만나보세요</span>
																</span>
															</a>
														</div>
													<div class="sub-prd num-5">
															<a href="https://www.samsung.com/sec/tablets/galaxy-tab-s7-plus-t975/SM-T975NDBBKOO/" class="rec-link" aria-selected="false" data-omni="Product:new:Galaxy Tab S7">
																	<span class="pic-wrap">
																	<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/77a314f4-808d-4d10-87b4-8d52a2e6d7dc.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/8e0ab00f-e7d7-4b94-a116-10e739718bb5.png?$ORIGIN_JPG$"></span>
																	</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"><span>Galaxy Tab S7</span></span>
																	<span class="desc theme-blk">더욱 강력해진 퍼포먼스와<br>새로운 컬러의 만남</span>
																</span>
															</a>
														</div>
													<div class="sub-prd num-6">
															<a href="https://www.samsung.com/sec/shoedresser/all-shoedresser/" class="rec-link" aria-selected="false" data-omni="Product:new:BESPOKE shoedresser">
																	<span class="pic-wrap">
																	<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/26a1c781-aa8c-4bf7-b65c-306feeafc8f2.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/31d91b95-37bb-491a-9c39-ffb34800a82e.png?$ORIGIN_JPG$"></span>
																	</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"><span>BESPOKE 슈드레서</span></span>
																	<span class="desc theme-blk">매일매일 산뜻한<br>맞춤 슈즈 케어 솔루션</span>
																</span>
															</a>
														</div>
													</div>
												<!-- 2dep banner -->
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:reference-model" >닷컴 추천 제품</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/recommended/all-recommended/" aria-selected="false" data-omni="Product:reference-model:all-reference-model" >전체 추천모델</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/recommended/all-recommended/" data-omni="feature image:Product:Reference-model:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/0ed35921-7c3e-4065-86eb-f505e569c602.jpg?$ORIGIN_JPG$" alt="닷컴 추천 제품" class="lozad">
																</div>
															<p class="txt">닷컴 추천 제품</p>
															<div class="link">
																<span></span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:mobile" >모바일</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="https://www.samsung.com/sec/galaxy/home/" aria-selected="false" data-omni="Product:mobile:Everything about the Galaxy" >갤럭시의 모든 것</a>
																</li>
													<li >
														<a href="/sec/mobile/why-galaxy/" aria-selected="false" data-omni="Product:mobile:Life to get used to something amazing" >갤럭시가 특별한 이유</a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:smartphones" >스마트폰</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/smartphones/" aria-selected="false" data-omni="Product:mobile:smartphones:smartphones recommendation" >추천 스마트폰</a>
																				</li>
																	<li >
																		<a href="/sec/smartphones/all-smartphones/" aria-selected="false" data-omni="Product:mobile:smartphones:view-all" >전체 스마트폰</a>
																				</li>
																	<li >
																		<a href="/sec/smartphones/all-smartphones/?galaxy-s" aria-selected="false" data-omni="Product:mobile:smartphones:galaxy-s" >갤럭시 S</a>
																				</li>
																	<li >
																		<a href="/sec/smartphones/all-smartphones/?galaxy-z" aria-selected="false" data-omni="Product:mobile:smartphones:galaxy-z" >갤럭시 Z</a>
																				</li>
																	<li >
																		<a href="/sec/smartphones/all-smartphones/?galaxy-note" aria-selected="false" data-omni="Product:mobile:smartphones:galaxy-note" >갤럭시 노트</a>
																				</li>
																	<li >
																		<a href="/sec/smartphones/all-smartphones/?galaxy-a" aria-selected="false" data-omni="Product:mobile:smartphones:galaxy-a" >갤럭시 A</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/smartphones/all-smartphones/?galaxy-m" aria-selected="false" data-omni="Product:mobile:smartphones:Galaxy M" >갤럭시 M</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?smartphones" aria-selected="false" data-omni="Product:mobile:smartphones:mobile accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:tablets" >태블릿</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/tablets/" aria-selected="false" data-omni="Product:mobile:tablets:tablets learn more" >추천 태블릿</a>
																				</li>
																	<li >
																		<a href="/sec/tablets/all-tablets/" aria-selected="false" data-omni="Product:mobile:tablets:view-all" >전체 태블릿</a>
																				</li>
																	<li >
																		<a href="/sec/tablets/all-tablets/?galaxy-tabs" aria-selected="false" data-omni="Product:mobile:tablets:galaxy-tabs" >갤럭시 탭 S</a>
																				</li>
																	<li >
																		<a href="/sec/tablets/all-tablets/?galaxy-taba" aria-selected="false" data-omni="Product:mobile:tablets:galaxy-taba" >갤럭시 탭 A</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?tablets" aria-selected="false" data-omni="Product:mobile:tablets:tablet accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:Galaxy Book" >갤럭시 북</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/pc" aria-selected="false" data-omni="Product:mobile:Galaxy Book:Recommended Galaxy Book" >추천 갤럭시 북</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxybook/all-galaxybook" aria-selected="false" data-omni="Product:mobile:Galaxy Book:All Galaxy Book" >전체 갤럭시 북</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxybook/all-galaxybook/?galaxybook-pro-360" aria-selected="false" data-omni="Product:mobile:Galaxy Book:Galaxy Book Pro 360" >갤럭시 북 Pro 360</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxybook/all-galaxybook/?galaxybook-pro" aria-selected="false" data-omni="Product:mobile:Galaxy Book:Galaxy Book Pro" >갤럭시 북 Pro</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxybook/all-galaxybook/?galaxybook-flex" aria-selected="false" data-omni="Product:mobile:Galaxy Book:Galaxy Book Flex" >갤럭시 북 Flex</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxybook/all-galaxybook/?galaxybook-ion" aria-selected="false" data-omni="Product:mobile:Galaxy Book:Galaxy Book Ion" >갤럭시 북 Ion</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxybook/all-galaxybook/?galaxybook-s" aria-selected="false" data-omni="Product:mobile:Galaxy Book:Galaxy Book S" >갤럭시 북 S</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxybook/all-galaxybook/?notebook-plus" aria-selected="false" data-omni="Product:mobile:Galaxy Book:Notebook Plus" >노트북 Plus</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:watches" >워치</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/watches/" aria-selected="false" data-omni="Product:mobile:watches:watches learn more" >추천 워치</a>
																				</li>
																	<li >
																		<a href="/sec/watches/all-watches/" aria-selected="false" data-omni="Product:mobile:watches:view-all" >전체 워치</a>
																				</li>
																	<li >
																		<a href="/sec/watches/all-watches/?galaxy-watch" aria-selected="false" data-omni="Product:mobile:watches:galaxy-watch" >갤럭시 워치</a>
																				</li>
																	<li >
																		<a href="/sec/watches/all-watches/?galaxy-watch-active" aria-selected="false" data-omni="Product:mobile:watches:galaxy-watch-active" >갤럭시 워치 액티브</a>
																				</li>
																	<li >
																		<a href="/sec/watches/all-watches/?galaxy-fit" aria-selected="false" data-omni="Product:mobile:watches:galaxy-fit" >갤럭시 핏</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?watch" aria-selected="false" data-omni="Product:mobile:watches:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:buds" >버즈</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/buds/" aria-selected="false" data-omni="Product:mobile:buds:buds learn more" >추천 버즈</a>
																				</li>
																	<li >
																		<a href="/sec/buds/all-buds/" aria-selected="false" data-omni="Product:mobile:buds:view-all" >전체 버즈</a>
																				</li>
																	<li >
																		<a href="/sec/buds/all-buds/?galaxy-buds-pro" aria-selected="false" data-omni="Product:mobile:buds:galaxy-buds-pro" >갤럭시 버즈 프로</a>
																				</li>
																	<li >
																		<a href="/sec/buds/all-buds/?galaxy-buds-live" aria-selected="false" data-omni="Product:mobile:buds:galaxy-buds" >갤럭시 버즈 라이브</a>
																				</li>
																	<li >
																		<a href="/sec/buds/all-buds/?galaxy-buds-plus" aria-selected="false" data-omni="Product:mobile:buds:galaxy-buds-plus" >갤럭시 버즈+</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?cover+buds" aria-selected="false" data-omni="Product:mobile:buds:cover" >갤럭시 버즈 커버</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:mobile-accessories" >모바일 액세서리</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/" aria-selected="false" data-omni="Product:mobile:mobile-accessories:all-mobile-accessories" >전체 액세서리</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/mobile-accessories/all-mobile-accessories/?smart-tag" aria-selected="false" data-omni="Product:mobile:mobile-accessories:galaxy-smart-tag" >갤럭시 스마트태그</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?smartphones" aria-selected="false" data-omni="Product:mobile:mobile-accessories:smartphones-accessories" >스마트폰 액세서리</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?tablets" aria-selected="false" data-omni="Product:mobile:mobile-accessories:tablets-accessories" >태블릿 액세서리</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?watch" aria-selected="false" data-omni="Product:mobile:mobile-accessories:watch-accessories" >워치 액세서리</a>
																				</li>
																	<li >
																		<a href="/sec/mobile-accessories/all-mobile-accessories/?buds" aria-selected="false" data-omni="Product:mobile:mobile-accessories:buds-accessories" >버즈 액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:online" >체험존</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/galaxy-s21/experience/" aria-selected="false" data-omni="Product:mobile:online:galaxy s21 5g" >갤럭시 S21 5G – S21번지 집콕 빌리지</a>
																				</li>
																	<li >
																		<a href="/sec/galaxy-z/experience/" aria-selected="false" data-omni="Product:mobile:online:galaxy-z experience" >갤럭시 Z 폴드2│Z 플립 5G - 매거진 Z</a>
																				</li>
																	<li >
																		<a href="/sec/galaxy-note20/experience/" aria-selected="false" data-omni="Product:mobile:online:galaxy-note20/experience/" >갤럭시 노트20 5G - 노트 ON</a>
																				</li>
																	<li >
																		<a href="/sec/galaxy-s21/galaxystudio/" aria-selected="false" data-omni="Product:mobile:online:galaxystudio" >갤럭시 스튜디오</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:app_service" >앱&서비스</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/apps/" aria-selected="false" data-omni="Product:mobile:app_service:apps learn more" >앱&서비스 알아보기</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/Samsung-Care-Plus/IM/" aria-selected="false" data-omni="Product:mobile:app_service:Samsung Care+" >Samsung Care+</a>
																				</li>
																	<li >
																		<a href="/sec/apps/galaxy-store/" aria-selected="false" data-omni="Product:mobile:app_service:galaxy store" >갤럭시 스토어</a>
																				</li>
																	<li >
																		<a href="/sec/apps/bixby/" aria-selected="false" data-omni="Product:mobile:app_service:bixby" >빅스비</a>
																				</li>
																	<li >
																		<a href="/sec/samsung-pay/" aria-selected="false" data-omni="Product:mobile:app_service:Samsung Pay" >삼성페이</a>
																				</li>
																	<li >
																		<a href="/sec/apps/samsung-health-monitor/" aria-selected="false" data-omni="Product:mobile:app_service:amsung-health-monitor" >삼성 헬스 모니터</a>
																				</li>
																	<li >
																		<a href="/sec/apps/samsung-dex/" aria-selected="false" data-omni="Product:mobile:app_service:samsung-dex" >Samsung DeX</a>
																				</li>
																	<li >
																		<a href="/sec/apps/samsung-members/" aria-selected="false" data-omni="Product:mobile:app_service:samsung-members" >Samsung Members</a>
																				</li>
																	<li >
																		<a href="/sec/galaxyclub/" aria-selected="false" data-omni="Product:mobile:app_service:Galaxy Club" >갤럭시클럽</a>
																				</li>
																	<li >
																		<a href="/sec/trade-in/" aria-selected="false" data-omni="Product:mobile:app_service:Trade-in" >트레이드인</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:mobile:contents" >추천 콘텐츠</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/galaxy-5g/" aria-selected="false" data-omni="Product:mobile:contents:Galaxy 5G" >갤럭시 5G</a>
																				</li>
																	<li >
																		<a href="/sec/smartphones/galaxy-s21-ultra-5g" aria-selected="false" data-omni="Product:mobile:contents:Galaxy 21 Ultra 5G Product Information (NEW)" >갤럭시 S21 Ultra 5G 제품 정보</a>
																				</li>
																	<li >
																		<a href="/sec/smartphones/galaxy-s21-5g" aria-selected="false" data-omni="Product:mobile:contents: Galaxy S21ㅣS21+  5G Product Information (NEW)" >갤럭시 S21ㅣS21+ 5G 제품 정보</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/smartphones/galaxy-z-fold2/" aria-selected="false" data-omni="Product:mobile:contents:Galaxy Z Fold 2 5G Product Information (NEW)" >갤럭시 Z 폴드2 5G 제품 정보</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/smartphones/galaxy-z-flip/" aria-selected="false" data-omni="Product:mobile:contents:Galaxy Z Flip 5G Product Information" >갤럭시 Z 플립 5G 제품 정보</a>
																				</li>
																	<li >
																		<a href="/sec/buds/galaxy-buds-pro-r190/SM-R190NZVAKOO/" aria-selected="false" data-omni="Product:mobile:contents:Galaxy Buds Pro Product Information (NEW)" >갤럭시 버즈 프로 제품 정보</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/tablets/galaxy-tab-s7-plus-5g-t976/SM-T976NDBBKOO/" aria-selected="false" data-omni="Product:mobile:contents:Galaxy Tap S7+ 5G Information" >갤럭시 탭 S7+ 5G 제품 정보</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/galaxy-s21/galaxystudio/challenge/" aria-selected="false" data-omni="Product:mobile:contents:Galaxy Book Connection Challenge" >갤럭시 북 연결 챌린지</a>
																				</li>
																	<li >
																		<a href="/sec/awards/" aria-selected="false" data-omni="Product:mobile:contents:Awarded Products at a Glance" >한눈에 보는 수상 제품</a>
																				</li>
																	<li >
																		<a href="/sec/videogallery/?group=mobile" aria-selected="false" data-omni="Product:mobile:contents:Product video at a glance" >한눈에 보는 제품 영상</a>
																				</li>
																	</ul>
															</div>
														</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/store-model/new-galaxy-book/launching/" data-omni="feature image:Product:launching:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/086013e6-59d9-4635-aeb3-a8fa7ba578c5.jpg?$ORIGIN_JPG$" alt="모바일" class="lozad">
																</div>
															<p class="txt">Galaxy Book I Pro I Pro 360 런칭</p>
															<div class="link">
																<span>구매 혜택 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:tv&audio" >TV&오디오</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/micro-led/micro-led-ms1acxkr/MNA110MS1ACXKR/" aria-selected="false" data-omni="Product:tv&audio:micro-led" >MICRO LED </a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:tv&audio:tv" >TV</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/tvs/neo-qled-8k" aria-selected="false" data-omni="Product:tv&audio:tv:tv learn more" >추천 TV</a>
																				</li>
																	<li >
																		<a href="/sec/tvs/all-tvs/" aria-selected="false" data-omni="Product:tv&audio:tv:view-all" >전체 TV</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/tvs/all-tvs/?neo-qled-8k" aria-selected="false" data-omni="Product:tv&audio:tv:Neo QLED 8K" >Neo QLED 8K</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/tvs/all-tvs/?neo-qled-4k" aria-selected="false" data-omni="Product:tv&audio:tv:Neo QLED 4K" >Neo QLED 4K</a>
																				</li>
																	<li >
																		<a href="/sec/tvs/all-tvs/?qled-8k-tv" aria-selected="false" data-omni="Product:tv&audio:tv:qled_8k_tv" >QLED 8K</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/tvs/all-tvs/?qled-4k-tv" aria-selected="false" data-omni="Product:tv&audio:tv:qled_4k_tv" >QLED 4K</a>
																				</li>
																	<li >
																		<a href="/sec/tvs/all-tvs/?crystal-uhd" aria-selected="false" data-omni="Product:tv&audio:tv:crystal_uhd" >Crystal UHD</a>
																				</li>
																	<li >
																		<a href="/sec/tv-accessories/all-tv-accessories/?TVs" aria-selected="false" data-omni="Product:tv&audio:tv:tv_accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:tv&audio:lifestyletv" >Lifestyle TV</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/lifestyletv/home/" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:lifestyletv recommend" >보다 The 나답게, Lifestyle TV의 모든 것</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/all-lifestyletv/" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:view-all" >전체 Lifestyle TV</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/all-lifestyletv/?the-serif" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:the-serif" >The Serif</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/all-lifestyletv/?the-frame" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:the-frame" >The Frame</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/all-lifestyletv/?the-premiere" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:The Premiere" >The Premiere</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/all-lifestyletv/?the-sero" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:the-sero" >The Sero</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/all-lifestyletv/?the-terrace" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:the-terrace" >The Terrace</a>
																				</li>
																	<li >
																		<a href="/sec/tv-accessories/all-tv-accessories/?frame" aria-selected="false" data-omni="Product:tv&audio:lifestyletv:frame_tv_accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:tv&audio:sound_bar" >삼성 사운드바</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/audio-devices/Sound-bar/" aria-selected="false" data-omni="Product:tv&audio:sound_bar:Recommand_Product" >추천 삼성 사운드바</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/samsung-audio/all-samsung-audio/" aria-selected="false" data-omni="Product:tv&audio:sound_bar:all-samsung-audio" >전체 삼성 사운드바</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/samsung-audio/all-samsung-audio/?Q-Series-Soundbar" aria-selected="false" data-omni="Product:tv&audio:sound_bar:Q-Series-Soundbar" >Q시리즈 사운드바</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/samsung-audio/all-samsung-audio/?S-Series-Soundbar" aria-selected="false" data-omni="Product:tv&audio:sound_bar:S-Series-Soundbar" >S시리즈 사운드바</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/samsung-audio/all-samsung-audio/?T-Series-Soundbar" aria-selected="false" data-omni="Product:tv&audio:sound_bar:T-Series-Soundbar" >T시리즈 사운드바</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/samsung-audio/all-samsung-audio/?A-Series-Soundbar" aria-selected="false" data-omni="Product:tv&audio:sound_bar:A-Series-Soundbar" >A시리즈 사운드바</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/samsung-audio/all-samsung-audio/?Soundbar" aria-selected="false" data-omni="Product:tv&audio:sound_bar:Soundbar" >일반 사운드바</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/samsung-audio/all-samsung-audio/?Sound-Tower" aria-selected="false" data-omni="Product:tv&audio:sound_bar:Sound-Tower" >사운드타워</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:tv&audio:av_lifestyle" >라이프스타일 오디오</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/#lifestyle_audio" aria-selected="false" data-omni="Product:tv&audio:av_lifestyle:Recommended product" >추천 라이프스타일 오디오</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman-life-style-audio/all-harman-life-style-audio/" aria-selected="false" data-omni="Product:tv&audio:av_lifestyle:all-life-style-audio" >전체 라이프스타일 오디오</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/jbl/" aria-selected="false" data-omni="Product:tv&audio:av_lifestyle:JBL" >JBL</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/akg/" aria-selected="false" data-omni="Product:tv&audio:av_lifestyle:AKG" >AKG</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/harman-kardon/" aria-selected="false" data-omni="Product:tv&audio:av_lifestyle:harman/kardon" >harman/kardon</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:tv&audio:highend" >하이엔드 오디오</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/#highend_audio" aria-selected="false" data-omni="Product:tv&audio:highend:Recommended product" >추천 하이엔드 오디오</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/mark-levinson/" aria-selected="false" data-omni="Product:tv&audio:highend:Mark Levinson" >Mark Levinson</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/jbl-highend/" aria-selected="false" data-omni="Product:tv&audio:highend:JBL SYNTHESIS" >JBL SYNTHESIS</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/arcam/" aria-selected="false" data-omni="Product:tv&audio:highend:ARCAM" >ARCAM</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/revel/" aria-selected="false" data-omni="Product:tv&audio:highend:REVEL" >REVEL</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman/lexicon/" aria-selected="false" data-omni="Product:tv&audio:highend:LEXICON" >LEXICON</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:tv&audio:experience" >체험존</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/bespoke/home/experience/" aria-selected="false" data-omni="Product:tv&audio:experience:Decorating the house" >BESPOKE - 나답게 집꾸</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:tv&audio:Recommended-content" >추천 콘텐츠</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/tvs/qled-tv/highlights/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:Neo QLED 8K" >2021년 신제품 Neo QLED의 모든 것</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/the-serif/highlights/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:The Serif " >The Serif 제품 정보</a>
																				</li>
																	<li >
																		<a href="/sec/lifestyletv/the-frame/highlights/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:The Frame" >The Frame 제품 정보</a>
																				</li>
																	<li >
																		<a href="/sec/awards/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:awards" >한눈에 보는 수상 제품</a>
																				</li>
																	<li >
																		<a href="/sec/videogallery/?group=tv" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:Product video at a glance" >한눈에 보는 제품 영상</a>
																				</li>
																	<li >
																		<a href="/sec/tvs/super-big-tv/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content: The impression that grows as much as the larger screen" >커진 화면만큼 커지는 감동</a>
																				</li>
																	<li >
																		<a href="/sec/tvs/tv-buying-guide/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:Everything on TV you need to know before buying" >구매 전 꼭 알아야 할 TV의 모든 것</a>
																				</li>
																	<li >
																		<a href="/sec/tvs/smart-tv/highlights/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:More convenient life with smarter TV" >스마트 TV에 인텔리전트를 더하다</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/audio-devices/q-series-soundbar/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:q-series-soundbar" >극강의 서라운드 Q시리즈 사운드바</a>
																				</li>
																	<li >
																		<a href="/sec/harman/smartadvice-lifestyle/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:smartadvice-lifestyle" >오디오 스마트 추천 더 알아보기</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/harman-review-magazine/anc-review/" aria-selected="false" data-omni="Product:tv&audio:Recommended-content:anc-review" >노이즈 캔슬링 제품 전문 리뷰</a>
																				</li>
																	</ul>
															</div>
														</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/store-model/multiview/launching/" data-omni="feature image:Product:NEO QLED:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/e00f7656-2fdf-4647-b1a9-a29819e91d7c.png?$ORIGIN_JPG$" alt="스포츠의 감동을 함께. 보다. 크게" class="lozad">
																</div>
															<p class="txt">스포츠의 감동을 함께. 보다. 크게</p>
															<div class="link">
																<span>구매 혜택 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:Chef Collection" >셰프컬렉션</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/refrigerators/chefcollection" aria-selected="false" data-omni="Product:Chef Collection:learn more" >셰프컬렉션 더 알아보기</a>
																</li>
													<li >
														<a href="/sec/refrigerators/all-refrigerators/?chefcollection" aria-selected="false" data-omni="Product:Chef Collection:chefcollection_all" >전체 셰프컬렉션</a>
																</li>
													<li >
														<a href="/sec/chefcollection/buy/" aria-selected="false" data-omni="Product:Chef Collection:chefcollection_buy" >조합하여 구매하기</a>
																</li>
													<li >
														<a href="/sec/chefcollection/experience/" aria-selected="false" data-omni="Product:Chef Collection:chefcollection_experience" >셰프컬렉션 쇼룸</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/refrigerators/chefcollection/" data-omni="feature image:Product:Chef Collection Refrigerator:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/d77020e3-5f9c-4bb1-af40-170769f29669.gif?$ORIGIN_JPG$" alt="셰프컬렉션" class="lozad">
																</div>
															<p class="txt">셰프컬렉션 냉장고</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:bespoke" >BESPOKE</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/bespoke/home/" aria-selected="false" data-omni="Product:bespoke:bespoke-home" >BESPOKE의 모든 것</a>
																</li>
													<li >
														<a href="/sec/bespokestudio/" aria-selected="false" data-omni="Product:bespoke:bespokestudio" >BESPOKE 제작소</a>
																</li>
													<li >
														<a href="/sec/store-model/2021bespoke/buy" aria-selected="false" data-omni="Product:bespoke:bespoke-new-benefit" >BESPOKE 냉장고/김치냉장고</a>
																</li>
													<li >
														<a href="/sec/water-purifier/all-water-purifier/" aria-selected="false" data-omni="Product:bespoke:BESPOKE water-purifier" >BESPOKE 정수기</a>
																</li>
													<li >
														<a href="/sec/dishwashers/all-dishwashers/?bespoke" aria-selected="false" data-omni="Product:bespoke:bespoke_dishwasher" >BESPOKE 식기세척기</a>
																</li>
													<li >
														<a href="/sec/electric-range/all-electric-range/?BESPOKE-induction" aria-selected="false" data-omni="Product:bespoke:BESPOKE-induction" >BESPOKE 인덕션</a>
																</li>
													<li >
														<a href="/sec/cooking-appliances/all-cooking-appliances/?bespoke-ovens+bespoke-microwaves" aria-selected="false" data-omni="Product:bespoke:bespoke-ovens&microwaves" >BESPOKE 직화오븐/전자레인지</a>
																</li>
													<li >
														<a href="/sec/air-conditioners/all-air-conditioners/?BESPOKE%20gallery+BESPOKE%20Classic" aria-selected="false" data-omni="Product:bespoke:bespoke-conditioners" >BESPOKE 무풍에어컨</a>
																</li>
													<li >
														<a href="/sec/washing-machines/all-washing-machines/?bespoke-grande-ai-package" aria-selected="false" data-omni="Product:bespoke:BESPOKE-GRANDE-AI" >BESPOKE 그랑데 AI</a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:bespoke:bespoke-airdresser/shoedresser" >BESPOKE 에어드레서/슈드레서</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/airdresser/all-airdresser/?bespoke-airdresser" aria-selected="false" data-omni="Product:bespoke:bespoke-airdresser/shoedresser:BESPOKE Air dresser" >BESPOKE 에어드레서</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/shoedresser/all-shoedresser/" aria-selected="false" data-omni="Product:bespoke:bespoke-airdresser/shoedresser:BESPOKE Shoe dresser" >BESPOKE 슈드레서</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="/sec/air-cleaner/all-air-cleaner/?bespoke-cube-air" aria-selected="false" data-omni="Product:bespoke:BESPOKE CUBE™ Air" >BESPOKE 큐브™ Air</a>
																</li>
													<li >
														<a href="https://www.samsung.com/sec/vacuum-cleaners/all-vacuum-cleaners/?bespoke-jetbot+bespoke-jet+bespoke-slim" aria-selected="false" data-omni="Product:bespoke:BESPOKE JET/JETBOT/SLIM" >BESPOKE 제트/제트 봇/슬림</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/bespoke/home/experience/" data-omni="feature image:Product:BESPOKE Decorating the house:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/2e473df8-ecf3-4c82-b7b6-58a722ab6ac9.jpg?$ORIGIN_JPG$" alt="BESPOKE 나답게 집꾸 체험존" class="lozad">
																</div>
															<p class="txt">BESPOKE 나답게 집꾸 체험존</p>
															<div class="link">
																<span>집꾸 시작하기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances" >주방가전</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators" >냉장고</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/refrigerators/bespoke/" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators: Recommended refrigerator" >추천 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/refrigerators/all-refrigerators/" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:refrigerators" >전체 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/refrigerators/all-refrigerators/?chefcollection" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:chefcollection" >셰프컬렉션 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/refrigerators/all-refrigerators/?bespoke" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:bespoke" >BESPOKE 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/refrigerators/all-refrigerators/?bespoke-cube" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:BESPOKE cube refrigerators" >BESPOKE 큐브 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/refrigerators/all-refrigerators/?side-by-side" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:side-by-side" >양문형 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/refrigerators/all-refrigerators/?refrigerators" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:refrigerators" >일반 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/refrigerators/all-refrigerators/?business-refrigerator" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:refrigerators" >업소용 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/kitchen-accessories/all-kitchen-accessories/?refrigerator-accessories" aria-selected="false" data-omni="Product:kitchen-appliances:refrigerators:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:kimchi-refrigerators" >김치냉장고</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/kimchi-refrigerators/" aria-selected="false" data-omni="Product:kitchen-appliances:kimchi-refrigerators:kimchi-refrigerators learn more" >추천 김치냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/kimchi-refrigerators/all-kimchi-refrigerators/" aria-selected="false" data-omni="Product:kitchen-appliances:kimchi-refrigerators:view all" >전체 김치냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/kimchi-refrigerators/all-kimchi-refrigerators/?bespoke" aria-selected="false" data-omni="Product:kitchen-appliances:kimchi-refrigerators:bespoke" >BESPOKE 김치플러스</a>
																				</li>
																	<li >
																		<a href="/sec/kimchi-refrigerators/all-kimchi-refrigerators/?stand" aria-selected="false" data-omni="Product:kitchen-appliances:kimchi-refrigerators:stand-4doors-kimchiplus" >김치플러스 스탠드형</a>
																				</li>
																	<li >
																		<a href="/sec/kimchi-refrigerators/all-kimchi-refrigerators/?covered" aria-selected="false" data-omni="Product:kitchen-appliances:kimchi-refrigerators:kimchiplus_cover" >김치플러스 뚜껑형</a>
																				</li>
																	<li >
																		<a href="/sec/kitchen-accessories/all-kitchen-accessories/?kimchirefrigerators-accessories" aria-selected="false" data-omni="Product:kitchen-appliances:kimchi-refrigerators:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:Water-purifier" >정수기</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/water-purifier/" aria-selected="false" data-omni="Product:kitchen-appliances:Water-purifier:Recommended water purifier" >추천 정수기</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/water-purifier/all-water-purifier/" aria-selected="false" data-omni="Product:kitchen-appliances:Water-purifier:all-water-purifier" >전체 정수기</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/kitchen-accessories/all-kitchen-accessories/?water-purifier-accessories" aria-selected="false" data-omni="Product:kitchen-appliances:Water-purifier:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:dishwashers" >식기세척기</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/dishwashers/" aria-selected="false" data-omni="Product:kitchen-appliances:dishwashers:Recommended product" >추천 식기세척기</a>
																				</li>
																	<li >
																		<a href="/sec/dishwashers/all-dishwashers/" aria-selected="false" data-omni="Product:kitchen-appliances:dishwashers:view all" >전체 식기세척기</a>
																				</li>
																	<li >
																		<a href="/sec/dishwashers/all-dishwashers/?bespoke" aria-selected="false" data-omni="Product:kitchen-appliances:dishwashers:builtin" >BESPOKE 식기세척기</a>
																				</li>
																	<li >
																		<a href="/sec/dishwashers/all-dishwashers/?general" aria-selected="false" data-omni="Product:kitchen-appliances:dishwashers:dishwashers" >일반 식기세척기</a>
																				</li>
																	<li >
																		<a href="/sec/kitchen-accessories/all-kitchen-accessories/?dishwashers-accessories" aria-selected="false" data-omni="Product:kitchen-appliances:dishwashers:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range" >전기레인지</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/electric-range/" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:Recommended product" >추천 전기레인지</a>
																				</li>
																	<li >
																		<a href="/sec/electric-range/all-electric-range/" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:view all" >전체 전기레인지</a>
																				</li>
																	<li >
																		<a href="/sec/electric-range/all-electric-range/?chef-collection-induction" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:chef-collection-induction" >셰프컬렉션 인덕션</a>
																				</li>
																	<li >
																		<a href="/sec/electric-range/all-electric-range/?BESPOKE-induction" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:BESPOKE-induction" >BESPOKE 인덕션</a>
																				</li>
																	<li >
																		<a href="/sec/electric-range/all-electric-range/?induction" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:induction" >인덕션</a>
																				</li>
																	<li >
																		<a href="/sec/electric-range/all-electric-range/?theplate-induction" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:induction-theplate" >더 플레이트 인덕션</a>
																				</li>
																	<li >
																		<a href="/sec/electric-range/all-electric-range/?hybrid" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:hybrid" >하이브리드</a>
																				</li>
																	<li >
																		<a href="/sec/electric-range/all-electric-range/?radiant" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:radiant" >라디언트</a>
																				</li>
																	<li >
																		<a href="/sec/kitchen-accessories/all-kitchen-accessories/?electricrange-accessories" aria-selected="false" data-omni="Product:kitchen-appliances:electric-range:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:cooking-appliances" >오븐/전자레인지</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/cooking-appliances/bespoke-oven/" aria-selected="false" data-omni="Product:kitchen-appliances:cooking-appliances:Recommended product" >추천 오븐/전자레인지</a>
																				</li>
																	<li >
																		<a href="/sec/cooking-appliances/all-cooking-appliances/" aria-selected="false" data-omni="Product:kitchen-appliances:cooking-appliances:view all" >전체 오븐/전자레인지</a>
																				</li>
																	<li >
																		<a href="/sec/cooking-appliances/all-cooking-appliances/?bespoke-ovens" aria-selected="false" data-omni="Product:kitchen-appliances:cooking-appliances:bespoke-ovens" >BESPOKE 직화오븐</a>
																				</li>
																	<li >
																		<a href="/sec/cooking-appliances/all-cooking-appliances/?bespoke-microwaves" aria-selected="false" data-omni="Product:kitchen-appliances:cooking-appliances:bespoke-microwaves" >BESPOKE 전자레인지</a>
																				</li>
																	<li >
																		<a href="/sec/cooking-appliances/all-cooking-appliances/?ovens" aria-selected="false" data-omni="Product:kitchen-appliances:cooking-appliances:ovens" >일반 오븐</a>
																				</li>
																	<li >
																		<a href="/sec/cooking-appliances/all-cooking-appliances/?microwaves" aria-selected="false" data-omni="Product:kitchen-appliances:cooking-appliances:microwaves" >일반 전자레인지</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:builtin" >빌트인 가전</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/builtin/all-builtin/" aria-selected="false" data-omni="Product:kitchen-appliances:builtin:view all" >전체 빌트인 가전</a>
																				</li>
																	<li >
																		<a href="/sec/builtin/all-builtin/?chef-collection-built-in" aria-selected="false" data-omni="Product:kitchen-appliances:builtin:chef-collection-built-in" >셰프컬렉션 빌트인</a>
																				</li>
																	<li >
																		<a href="/sec/builtin/all-builtin/?refrigerators" aria-selected="false" data-omni="Product:kitchen-appliances:builtin:builtin-refrigerators" >빌트인 냉장고</a>
																				</li>
																	<li >
																		<a href="/sec/builtin/all-builtin/?electric-range" aria-selected="false" data-omni="Product:kitchen-appliances:builtin:Built-in electric range" >빌트인 전기레인지</a>
																				</li>
																	<li >
																		<a href="/sec/builtin/all-builtin/?dish-washer" aria-selected="false" data-omni="Product:kitchen-appliances:builtin:builtin-dish-washer" >빌트인 식기세척기</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:kitchen-appliances" >주방가전 액세서리</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/kitchen-accessories/all-kitchen-accessories/" aria-selected="false" data-omni="Product:kitchen-appliances:kitchen-appliances:kitchen-accessories" >전체 주방가전 액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="https://www.samsung.com/sec/Samsung-Care-Plus/CE/" aria-selected="false" data-omni="Product:kitchen-appliances:Samsung Care+" >Samsung Care+</a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:Experience-Zone" >체험존</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/bespoke/home/experience/" aria-selected="false" data-omni="Product:kitchen-appliances:Experience-Zone:Decorating the house" >BESPOKE - 나답게 집꾸</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:kitchen-appliances:recommend" >추천 콘텐츠</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/awards/" aria-selected="false" data-omni="Product:kitchen-appliances:recommend:awards" >한눈에 보는 수상 제품</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/videogallery/?group=Kitchen-appliances" aria-selected="false" data-omni="Product:kitchen-appliances:recommend:Product video at a glance" >한눈에 보는 제품 영상</a>
																				</li>
																	<li >
																		<a href="/sec/explore/health/self-care/a-showcase-of-freshness/" aria-selected="false" data-omni="Product:kitchen-appliances:recommend:showcase of freshness" >신선함을 그대로 건강함을 그대로</a>
																				</li>
																	<li >
																		<a href="/sec/explore/health/self-care/cooking-less-effort-and-more-fun/" aria-selected="false" data-omni="Product:kitchen-appliances:recommend:Easy dishes that make me happy" >나를 행복하게 만드는 쉬운 요리</a>
																				</li>
																	</ul>
															</div>
														</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/store-model/bespoke-dishwasher/launching/" data-omni="feature image:Product:BESPOKE dishwasher:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/fa2a24a5-99c7-464d-9e43-fe6909801978.png?$ORIGIN_JPG$" alt="BESPOKE 나답게 집꾸 체험존" class="lozad">
																</div>
															<p class="txt">BESPOKE 식기세척기 런칭</p>
															<div class="link">
																<span>구매 혜택 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances" >의류가전</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines" >세탁기</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/washing-machines/" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:Recommended product" >추천 세탁기</a>
																				</li>
																	<li >
																		<a href="/sec/washing-machines/all-washing-machines/" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:view all" >전체 세탁기</a>
																				</li>
																	<li >
																		<a href="/sec/washing-machines/all-washing-machines/?FlexWash" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:flexwash" >플렉스워시</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/washing-machines/all-washing-machines/?bespoke-grande-ai" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:BESPOKE Grande washer AI" >BESPOKE 그랑데 세탁기 AI</a>
																				</li>
																	<li >
																		<a href="/sec/washing-machines/all-washing-machines/?grande-ai" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:grande-ai" >그랑데 세탁기 AI</a>
																				</li>
																	<li >
																		<a href="/sec/washing-machines/all-washing-machines/?grande" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:grande" >그랑데 세탁기</a>
																				</li>
																	<li >
																		<a href="/sec/washing-machines/all-washing-machines/?bubble-shot+addwashing-bubble-shot" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:addwashing-bubble-shot" >드럼 세탁기</a>
																				</li>
																	<li >
																		<a href="/sec/washing-machines/all-washing-machines/?active-wash-wobble" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:active-wash-wobble" >그랑데 통버블/전자동</a>
																				</li>
																	<li >
																		<a href="/sec/washing-machines/all-washing-machines/?babylove-washer" aria-selected="false" data-omni="Product:Clothing-appliances:washing-machines:babylove-washer" >소형 세탁기</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances:dryers" >건조기</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/dryers/" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:Recommended product" >추천 건조기</a>
																				</li>
																	<li >
																		<a href="/sec/dryers/all-dryers/" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:view all" >전체 건조기</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/dryers/all-dryers/?bespoke-grande-ai" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:BESPOKE Grande Dryer AI" >BESPOKE 그랑데 건조기 AI</a>
																				</li>
																	<li >
																		<a href="/sec/dryers/all-dryers/?grande-ai" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:grande-ai" >그랑데 건조기 AI</a>
																				</li>
																	<li >
																		<a href="/sec/dryers/all-dryers/?grande" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:grande dryers" >그랑데 건조기</a>
																				</li>
																	<li >
																		<a href="/sec/dryers/all-dryers/?9-kg" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:9kg-dryers" >건조기 9kg</a>
																				</li>
																	<li >
																		<a href="/sec/clothing-accessories/all-clothing-accessories/?dryer-top-kit" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:top-kit" >상단 설치 키트</a>
																				</li>
																	<li >
																		<a href="/sec/clothing-accessories/all-clothing-accessories/?dryer-indoor-kit" aria-selected="false" data-omni="Product:Clothing-appliances:dryers:indoor-kit" >실내 설치 키트</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances:airdresser" >에어드레서 </a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/airdresser/" aria-selected="false" data-omni="Product:Clothing-appliances:airdresser:Recommended product" >추천 에어드레서</a>
																				</li>
																	<li >
																		<a href="/sec/airdresser/all-airdresser/" aria-selected="false" data-omni="Product:Clothing-appliances:airdresser:airdresser" >전체 에어드레서</a>
																				</li>
																	<li >
																		<a href="/sec/airdresser/all-airdresser/?bespoke-airdresser" aria-selected="false" data-omni="Product:Clothing-appliances:airdresser:bespoke-airdresser" >BESPOKE 에어드레서</a>
																				</li>
																	<li >
																		<a href="/sec/airdresser/all-airdresser/?airdresser" aria-selected="false" data-omni="Product:Clothing-appliances:airdresser:airdresser" >에어드레서</a>
																				</li>
																	<li >
																		<a href="/sec/clothing-accessories/all-clothing-accessories/?airdresser-accessories" aria-selected="false" data-omni="Product:Clothing-appliances:airdresser:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances:Shoedresser" >슈드레서</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/shoedresser/bespoke-shoedresser/" aria-selected="false" data-omni="Product:Clothing-appliances:Shoedresser:Recommendation shoedresser" >추천 슈드레서</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/shoedresser/all-shoedresser/" aria-selected="false" data-omni="Product:Clothing-appliances:Shoedresser:all-shoedresser" >전체 슈드레서</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/shoedresser/all-shoedresser/" aria-selected="false" data-omni="Product:Clothing-appliances:Shoedresser:BESPOKE Shoedresser" >BESPOKE 슈드레서</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances:living-accessoires" >의류가전 액세서리</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/clothing-accessories/all-clothing-accessories/" aria-selected="false" data-omni="Product:Clothing-appliances:living-accessoires:view all" >전체 의류가전 액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="https://www.samsung.com/sec/Samsung-Care-Plus/CE/" aria-selected="false" data-omni="Product:Clothing-appliances:Samsung Care+" >Samsung Care+</a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances:experience" >체험존</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/bespoke/home/experience/" aria-selected="false" data-omni="Product:Clothing-appliances:experience:Decorating the house" >BESPOKE - 나답게 집꾸</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Clothing-appliances:recommend" >추천 콘텐츠</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/awards/" aria-selected="false" data-omni="Product:Clothing-appliances:recommend:Awarded Products at a Glance" >한눈에 보는 수상 제품</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/videogallery/?group=clothing-appliances" aria-selected="false" data-omni="Product:Clothing-appliances:recommend:Product video at a glance" >한눈에 보는 제품 영상</a>
																				</li>
																	</ul>
															</div>
														</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/event/bespokeshoedressertogo/" data-omni="feature image:Product:BESPOKE shoedresser:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/ff478ded-72d2-43ec-b669-a7ce9275cd7d.jpg?$ORIGIN_JPG$" alt="BESPOKE 슈드레서 체험단" class="lozad">
																</div>
															<p class="txt">BESPOKE 슈드레서 To-Go 이벤트</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:Living Appliances" >리빙가전</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:air conditioner" >에어컨</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/air-conditioners/gallery/" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:Recommended product" >추천 에어컨</a>
																				</li>
																	<li >
																		<a href="/sec/air-conditioners/all-air-conditioners/" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:view all" >전체 에어컨</a>
																				</li>
																	<li >
																		<a href="/sec/air-conditioners/all-air-conditioners/?multi-type" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:multi-type" >홈멀티 에어컨</a>
																				</li>
																	<li >
																		<a href="/sec/air-conditioners/all-air-conditioners/?floorstanding" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:floorstanding" >스탠드 에어컨</a>
																				</li>
																	<li >
																		<a href="/sec/air-conditioners/all-air-conditioners/?wall-mount" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:wall-mount" >벽걸이 에어컨</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/air-conditioners/all-air-conditioners/?window-type" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:Window " >창문형 에어컨</a>
																				</li>
																	<li >
																		<a href="/sec/air-conditioners/all-air-conditioners/?3multi-type" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:3multi-type" >무풍에어컨 멀티</a>
																				</li>
																	<li >
																		<a href="/sec/living-accessories/all-living-accessories/?air-conditioners-accessories" aria-selected="false" data-omni="Product:Living Appliances:air conditioner:air-conditioners-accessory" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:air cleaner" >공기청정기</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/air-cleaners/bespoke-cube/" aria-selected="false" data-omni="Product:Living Appliances:air cleaner:Recommended product" >추천 공기청정기</a>
																				</li>
																	<li >
																		<a href="/sec/air-cleaner/all-air-cleaner/" aria-selected="false" data-omni="Product:Living Appliances:air cleaner:view all" >전체 공기청정기</a>
																				</li>
																	<li >
																		<a href="/sec/air-cleaner/all-air-cleaner/?bespoke-cube-air" aria-selected="false" data-omni="Product:Living Appliances:air cleaner:BESPOKE CUBE™ Air" >BESPOKE 큐브™ Air</a>
																				</li>
																	<li >
																		<a href="/sec/air-cleaner/all-air-cleaner/?cube" aria-selected="false" data-omni="Product:Living Appliances:air cleaner:cube" >무풍큐브</a>
																				</li>
																	<li >
																		<a href="/sec/air-cleaner/all-air-cleaner/?blue-sky" aria-selected="false" data-omni="Product:Living Appliances:air cleaner:blue-sky" >블루스카이</a>
																				</li>
																	<li >
																		<a href="/sec/living-accessories/all-living-accessories/?aircleaner-accessories" aria-selected="false" data-omni="Product:Living Appliances:air cleaner:filter" >필터</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner" >청소기</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/vacuum-cleaners/bespoke-jet/" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:Recommended product" >추천 청소기</a>
																				</li>
																	<li >
																		<a href="/sec/vacuum-cleaners/all-vacuum-cleaners/" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:view all" >전체 청소기</a>
																				</li>
																	<li >
																		<a href="/sec/vacuum-cleaners/all-vacuum-cleaners/?bespoke-jet" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:BESPOKE JET" >BESPOKE 제트</a>
																				</li>
																	<li >
																		<a href="/sec/vacuum-cleaners/all-vacuum-cleaners/?bespoke-jetbot" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:BESPOKE JETBOT" >BESPOKE 제트 봇</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/vacuum-cleaners/all-vacuum-cleaners/?bespoke-slim" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:BESPOKE slim" >BESPOKE 슬림</a>
																				</li>
																	<li >
																		<a href="/sec/vacuum-cleaners/all-vacuum-cleaners/?jet" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:jet" >제트</a>
																				</li>
																	<li >
																		<a href="/sec/vacuum-cleaners/all-vacuum-cleaners/?powerbot" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:powerbot" >파워봇</a>
																				</li>
																	<li >
																		<a href="/sec/vacuum-cleaners/all-vacuum-cleaners/?powerstick" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:powerstick" >파워스틱</a>
																				</li>
																	<li >
																		<a href="/sec/vacuum-cleaners/all-vacuum-cleaners/?POWERmotion" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:powermotion" >파워모션</a>
																				</li>
																	<li >
																		<a href="/sec/living-accessories/all-living-accessories/?vacuum-accessories" aria-selected="false" data-omni="Product:Living Appliances:Vacuum cleaner:accessories" >액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="javascript:;" class="outlink " title="새창으로 열림" onclick="window.open('https://www.samsung.com/sec/business/system-air-conditioners/');"
																		aria-selected="false" data-omni="Product:Living Appliances:System air conditioner">시스템 에어컨</a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:Small appliances" >소형가전</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/small-appliances/all-small-appliances/" aria-selected="false" data-omni="Product:Living Appliances:Small appliances:view all" >전체 소형가전</a>
																				</li>
																	<li >
																		<a href="/sec/small-appliances/all-small-appliances/?smart-beam" aria-selected="false" data-omni="Product:Living Appliances:Small appliances:smart-beam" >스마트빔</a>
																				</li>
																	<li >
																		<a href="/sec/small-appliances/all-small-appliances/?bidet" aria-selected="false" data-omni="Product:Living Appliances:Small appliances:bidet" >비데</a>
																				</li>
																	<li >
																		<a href="/sec/small-appliances/all-small-appliances/?digital-doorlock" aria-selected="false" data-omni="Product:Living Appliances:Small appliances:digital-doorlock" >디지털 도어록</a>
																				</li>
																	<li >
																		<a href="/sec/small-appliances/all-small-appliances/?LED-Desk-Lamp" aria-selected="false" data-omni="Product:Living Appliances:Small appliances:LED Desk Lamp" >LED 데스크 램프</a>
																				</li>
																	<li >
																		<a href="/sec/small-appliances/all-small-appliances/?electric-fan" aria-selected="false" data-omni="Product:Living Appliances:Small appliances:electricfan" >선풍기</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:LED lights" >LED 조명</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/led-lamp/all-led-lamp/" aria-selected="false" data-omni="Product:Living Appliances:LED lights:view all" >전체 LED 조명</a>
																				</li>
																	<li >
																		<a href="/sec/led-lamp/all-led-lamp/?living-room" aria-selected="false" data-omni="Product:Living Appliances:LED lights:livingroomlamp" >홈 LED(거실/방등)</a>
																				</li>
																	<li >
																		<a href="/sec/led-lamp/all-led-lamp/?KitchenBathroom" aria-selected="false" data-omni="Product:Living Appliances:LED lights:kitchenbathroom" >홈 LED(주방/욕실등)</a>
																				</li>
																	<li >
																		<a href="/sec/led-lamp/all-led-lamp/?hallway" aria-selected="false" data-omni="Product:Living Appliances:LED lights:hallway" >홈 LED(현관/복도등)</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:Living Appliance Accessories" >리빙가전 액세서리</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/living-accessories/all-living-accessories" aria-selected="false" data-omni="Product:Living Appliances:Living Appliance Accessories:All Living Appliance Accessories" >전체 리빙가전 액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="https://www.samsung.com/sec/Samsung-Care-Plus/CE/" aria-selected="false" data-omni="Product:Living Appliances:Samsung Care+" >Samsung Care+</a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:experience" >체험존</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="https://www.samsung.com/sec/bespoke/home/experience/" aria-selected="false" data-omni="Product:Living Appliances:experience:Decorating the house" >BESPOKE - 나답게 집꾸</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:Living Appliances:Recommended content" >추천 콘텐츠</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/awards/" aria-selected="false" data-omni="Product:Living Appliances:Recommended content:Awarded Products at a Glance" >한눈에 보는 수상 제품</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/videogallery/?group=living-appliances" aria-selected="false" data-omni="Product:Living Appliances:Recommended content:Product video at a glance" >한눈에 보는 제품 영상</a>
																				</li>
																	<li >
																		<a href="/sec/explore/health/self-care/the-power-of-mindful-breathing/" aria-selected="false" data-omni="Product:Living Appliances:Recommended content:Breathing exercises that govern your inner self" >내면을 다스리는 호흡 운동</a>
																				</li>
																	</ul>
															</div>
														</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/2021_air-conditioner_review_event/" data-omni="feature image:Product:air-conditioner:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/ca13a894-90fa-4840-b237-63cd688751e3.jpg?$ORIGIN_JPG$" alt="진짜를 만나다 나의 무풍 이벤트" class="lozad">
																</div>
															<p class="txt">진짜를 만나다 나의 무풍 이벤트</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:it" >PC/주변기기</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="#" aria-selected="false" data-omni="Product:it:PC" >PC</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/pc/" aria-selected="false" data-omni="Product:it:PC:Recommended product" >추천 PC</a>
																				</li>
																	<li >
																		<a href="/sec/galaxybook/all-galaxybook/" aria-selected="false" data-omni="Product:it:PC:galaxybook" >갤럭시 북</a>
																				</li>
																	<li >
																		<a href="/sec/desktop/all-desktop/" aria-selected="false" data-omni="Product:it:PC:desktop" >데스크탑</a>
																				</li>
																	<li >
																		<a href="/sec/pc-accessories/all-pc-accessories/" aria-selected="false" data-omni="Product:it:PC:pc-accessories" >PC 액세서리</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:it:monitors" >모니터</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/monitors/" aria-selected="false" data-omni="Product:it:monitors:monitors learn more" >추천 모니터</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/all-monitors/" aria-selected="false" data-omni="Product:it:monitors:view-all" >전체 모니터</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/all-monitors/?high-resolution-monitors" aria-selected="false" data-omni="Product:it:monitors:high-resolution-monitors" >고해상도 모니터</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/smart-monitor/" aria-selected="false" data-omni="Product:it:monitors:smart-moniter" >스마트 모니터</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/all-monitors/?gaming-monitors" aria-selected="false" data-omni="Product:it:monitors:gaming-monitors" >게이밍 모니터</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/all-monitors/?led-monitors" aria-selected="false" data-omni="Product:it:monitors:monitors" >일반 모니터</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:it:printers" >프린터</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/printers/" aria-selected="false" data-omni="Product:it:printers:Recommended product" >추천 프린터</a>
																				</li>
																	<li >
																		<a href="/sec/printers/all-printers/" aria-selected="false" data-omni="Product:it:printers:view-all" >전체 프린터</a>
																				</li>
																	<li >
																		<a href="/sec/printers/all-printers/?color-laser-multifunction+laser-multifunction" aria-selected="false" data-omni="Product:it:printers:laser-multifunction" >레이저 프린터</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/printers/all-printers/?genuine-Infinite-Inkjet+inkjet-multifunction" aria-selected="false" data-omni="Product:it:printers:inkjet-multifunction" >잉크젯 프린터</a>
																				</li>
																	<li >
																		<a href="/sec/printer-supplies/all-printer-supplies/" aria-selected="false" data-omni="Product:it:printers:printer-supplies" >토너/잉크</a>
																				</li>
																	<li >
																		<a href="https://www.samsung.com/sec/printers/printer-supplies/" aria-selected="false" data-omni="Product:it:printers:Browse Toner Ink" >토너/잉크 찾아보기</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:it:memory-storage" >메모리/스토리지</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/memory-storage/" aria-selected="false" data-omni="Product:it:memory-storage:Recommended product" >추천 메모리/스토리지</a>
																				</li>
																	<li >
																		<a href="/sec/memory-storage/all-memory-storage/" aria-selected="false" data-omni="Product:it:memory-storage:view-all" >전체 메모리/스토리지</a>
																				</li>
																	<li >
																		<a href="/sec/memory-storage/all-memory-storage/?ssd" aria-selected="false" data-omni="Product:it:memory-storage:ssd" >SSD</a>
																				</li>
																	<li >
																		<a href="/sec/memory-storage/all-memory-storage/?portable-ssd" aria-selected="false" data-omni="Product:it:memory-storage:portable-ssd" >포터블 SSD</a>
																				</li>
																	<li >
																		<a href="/sec/memory-storage/all-memory-storage/?memory-card" aria-selected="false" data-omni="Product:it:memory-storage:memory-card" >메모리카드</a>
																				</li>
																	<li >
																		<a href="/sec/memory-storage/all-memory-storage/?usb-flash-drive" aria-selected="false" data-omni="Product:it:memory-storage:usb-flash-drive" >USB Flash Drive</a>
																				</li>
																	<li >
																		<a href="/sec/memory-storage/all-memory-storage/?ex-hdd" aria-selected="false" data-omni="Product:it:memory-storage:ex-hdd" >외장 HDD</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="#" aria-selected="false" data-omni="Product:it:Recommended" >추천 콘텐츠</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/awards/" aria-selected="false" data-omni="Product:it:Recommended:Awarded products at a glance" >한눈에 보는 수상 제품</a>
																				</li>
																	<li >
																		<a href="/sec/videogallery/?group=it" aria-selected="false" data-omni="Product:it:Recommended:Product video" >한눈에 보는 제품 영상</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/why-smart-monitor/" aria-selected="false" data-omni="Product:it:Recommended:Why Smart Monitar" >스마트모니터로 여는 새로운 라이프스타일</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/smart_monitors/" aria-selected="false" data-omni="Product:it:Recommended:Smart Monitar" >모든 일상을 만족시킬 스마트모니터</a>
																				</li>
																	<li >
																		<a href="http://design.samsung.com/kr/contents/odyssey-monitor/?utm_source=scom&utm_medium=link&utm_campaign=vd&utm_content=kr" aria-selected="false" data-omni="Product:it:Recommended:Odyssey Expedition Adventure" >오디세이 원정대의 모험</a>
																				</li>
																	<li >
																		<a href="/sec/monitors/odyssey" aria-selected="false" data-omni="Product:it:Recommended:Gaming monitor Odyssey" >게이밍 모니터 Odyssey</a>
																				</li>
																	</ul>
															</div>
														</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/store-model/new-galaxy-book/launching/" data-omni="feature image:Product:launching:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/66f2221e-d03d-49b0-9934-51027f1e6207.jpg?$ORIGIN_JPG$" alt="PC & 주변기기" class="lozad">
																</div>
															<p class="txt">Galaxy Book I Pro I Pro 360 런칭</p>
															<div class="link">
																<span>구매 혜택 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:SmartHome" >스마트홈</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/smarthome/" aria-selected="false" data-omni="Product:SmartHome:recommended smarthome" >추천 스마트홈</a>
																</li>
													<li >
														<a href="/sec/apps/smartthings/" aria-selected="false" data-omni="Product:SmartHome:app&service" >스마트싱스 앱 & 서비스</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="/sec/smarthome/" data-omni="feature image:Product:Recommend homet:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/6ef3bc29-f71c-4ecd-b70f-29a1d10190f5.jpg?$ORIGIN_JPG$" alt="스마트홈" class="lozad">
																</div>
															<p class="txt">스마트홈</p>
															<div class="link">
																<span>자세히 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="Product:expendables" >소모품</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/mobile-accessories/all-mobile-accessories/?smartphones+charger-n-cable" aria-selected="false" data-omni="Product:expendables:mobile-accessories" >스마트폰 소모품</a>
																</li>
													<li >
														<a href="/sec/living-accessories/all-living-accessories/?aircleaner-supplies" aria-selected="false" data-omni="Product:expendables:aircleaner-supplies" >공기청정기 소모품</a>
																</li>
													<li >
														<a href="/sec/living-accessories/all-living-accessories/?air-conditioners-supplies" aria-selected="false" data-omni="Product:expendables:air-conditioners-supplies" >에어컨 소모품</a>
																</li>
													<li >
														<a href="/sec/clothing-accessories/all-clothing-accessories/?washingmachines-supplies" aria-selected="false" data-omni="Product:expendables:washingmachines-supplies" >세탁기/건조기 소모품</a>
																</li>
													<li >
														<a href="/sec/clothing-accessories/all-clothing-accessories/?airdresser-supplies" aria-selected="false" data-omni="Product:expendables:airdresser-accessories" >에어드레서 소모품</a>
																</li>
													<li >
														<a href="/sec/kitchen-accessories/all-kitchen-accessories/?refrigerator-accessories+kimchirefrigerators-accessories" aria-selected="false" data-omni="Product:expendables:kitchen-accessories" >냉장고 소모품</a>
																</li>
													<li >
														<a href="/sec/living-accessories/all-living-accessories/?vacuum-supplies" aria-selected="false" data-omni="Product:expendables:vacuum-supplies" >청소기 소모품</a>
																</li>
													<li >
														<a href="/sec/printer-supplies/all-printer-supplies/" aria-selected="false" data-omni="Product:expendables:printer-supplies" >프린터 소모품</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="/sec/templateEvent/2020_Supplies/" data-omni="feature image:Product:2020_Supplies:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/14de5e3e-dd1f-43ef-b340-d33066ba6dcb.jpg?$ORIGIN_JPG$" alt="소모품 통합 기획전" class="lozad">
																</div>
															<p class="txt">소모품 통합 기획전</p>
															<div class="link">
																<span>구매 혜택 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										</ul>
								</div>
							</div>
						</li>
						<li>
							<a href="#" aria-controls="700000113-menu" aria-selected="false" data-omni="promotion" >기획전</a>
							<div class="gnb2depth">
								<div class="inner">
									<ul class="list">
										<li >
											<a href="#" aria-selected="false" data-omni="promotion:promotion learn more" >기획전 모두보기</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="https://www.samsung.com/sec/event/indexExhibitionCollection/" aria-selected="false" data-omni="promotion:promotion learn more:1" >바로가기</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/tvs/qled/" data-omni="feature image:promotion:QLED TV LIVE:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/e13154f9-5063-42b1-9167-7b5eb070d039.jpg?$ORIGIN_JPG$" alt="QLED TV 삼성닷컴 Live 알림 신청" class="lozad">
																</div>
															<p class="txt">QLED TV 삼성닷컴 Live 알림 신청</p>
															<div class="link">
																<span>알림 신청하기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="promotion:samsung only" >삼성닷컴 단독</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="https://www.samsung.com/sec/event/indexExhibitionCollection/?eventTypeCd=10" aria-selected="false" data-omni="promotion:samsung only:1" >바로가기</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/store-model/new-galaxy-book/launching/" data-omni="feature image:promotion:Galaxy Book I Pro I Pro 360 launching:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/c3091cd8-6edb-45b9-b0c8-c4d6de12fed3.jpg?$ORIGIN_JPG$" alt="Galaxy Book I Pro I Pro 360 런칭" class="lozad">
																</div>
															<p class="txt">Galaxy Book I Pro I Pro 360 런칭</p>
															<div class="link">
																<span>구매 혜택 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="promotion:promotionwedding-honeymoon-shop" >웨딩 ∙ 신혼샵</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="https://www.samsung.com/sec/store-model/weddingshop" aria-selected="false" data-omni="promotion:promotionwedding-honeymoon-shop:promotion-learn-more" >바로가기</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/store-model/weddingshop/" data-omni="feature image:promotion:promotionwedding-honeymoon-shop:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/d6f7ccde-e2ca-4fd4-92da-f54b5626ba8f.jpg?$ORIGIN_JPG$" alt="promotionwedding-honeymoon-shop" class="lozad">
																</div>
															<p class="txt">웨딩 ∙ 신혼샵</p>
															<div class="link">
																<span>인증하고 혜택 받기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="promotion:Galaxy_Campus_Store" >갤럭시 캠퍼스 스토어</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="https://www.samsung.com/sec/galaxycampus/" aria-selected="false" data-omni="promotion:Galaxy_Campus_Store:View more" >바로가기</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/galaxycampus/" data-omni="feature image:promotion:Learn more:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/54884be3-c839-4870-9d7b-8383122c1a29.jpg?$ORIGIN_JPG$" alt="갤럭시 캠퍼스 스토어" class="lozad">
																</div>
															<p class="txt">갤럭시 캠퍼스 스토어</p>
															<div class="link">
																<span>자세히 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="promotion:outlets" >아울렛</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/outlets/all-outlets" aria-selected="false" data-omni="promotion:outlets:outlets" >바로가기</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="/sec/outlets/all-outlets" data-omni="feature image:promotion::learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/f0364695-948d-44cb-84ae-025db5ad468d.jpg?$ORIGIN_JPG$" alt="아울렛" class="lozad">
																</div>
															<p class="txt">삼성닷컴 아울렛 오픈</p>
															<div class="link">
																<span>구매하기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="promotion:benefitzone" >혜택존</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/eventList/benefitzone/" aria-selected="false" data-omni="promotion:benefitzone:member-benefit" >닷컴 회원 혜택</a>
																</li>
													<li >
														<a href="/sec/eventList/benefitzone-point/" aria-selected="false" data-omni="promotion:benefitzone:benefitzone_point" >포인트 혜택</a>
																</li>
													<li >
														<a href="/sec/eventList/benefitzone-card/" aria-selected="false" data-omni="promotion:benefitzone:benefitzone_card" >카드 혜택</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/store-model/new-galaxy-book/launching/" data-omni="feature image:promotion:Galaxy Book I Pro I Pro 360 launching:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/948805b1-8fcc-4eeb-a270-92629aee80fe.jpg?$ORIGIN_JPG$" alt="Galaxy Book I Pro I Pro 360 런칭" class="lozad">
																</div>
															<p class="txt">Galaxy Book I Pro I Pro 360 런칭</p>
															<div class="link">
																<span>구매 혜택 보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="promotion:HomeFitness" >홈 피트니스</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/homefitness/" aria-selected="false" data-omni="promotion:HomeFitness:HomeFitness" >바로가기</a>
																</li>
													<li >
														<a href="/sec/homefitness/subscribe/" aria-selected="false" data-omni="promotion:HomeFitness:Subscribe" >구독서비스</a>
																</li>
													<li >
														<a href="#" aria-selected="false" data-omni="promotion:HomeFitness:Program" >프로그램</a>
														<div class="gnb4depth">
																<ul>
																	<li >
																		<a href="/sec/homefitness/program/" aria-selected="false" data-omni="promotion:HomeFitness:Program:All" >전체 프로그램</a>
																				</li>
																	<li >
																		<a href="/sec/homefitness/program/schedule/" aria-selected="false" data-omni="promotion:HomeFitness:Program:Schedule" >편성표</a>
																				</li>
																	<li >
																		<a href="/sec/homefitness/program/trainer/" aria-selected="false" data-omni="promotion:HomeFitness:Program:Trainer introduce" >트레이너 소개</a>
																				</li>
																	</ul>
															</div>
														</li>
													<li >
														<a href="/sec/homefitness/myhome/myhomeSsbInfo/" aria-selected="false" data-omni="promotion:HomeFitness:My HomeFitness" >나의 홈 피트니스</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/homefitness" data-omni="feature image:promotion:Home fitness launching:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/147cf82a-9f83-4453-8081-bc762daabac0.jpg?$ORIGIN_JPG$" alt="홈 피트니스" class="lozad">
																</div>
															<p class="txt">홈 피트니스 런칭</p>
															<div class="link">
																<span>첫달 무료! 홈 피트니스 시작하기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										</ul>
								</div>
							</div>
						</li>
						<li>
							<a href="#" aria-controls="700000114-menu" aria-selected="false" data-omni="story" >스토리</a>
							<div class="gnb2depth">
								<div class="inner">
									<ul class="list">
										<li >
											<a href="#" aria-selected="false" data-omni="story:recommended contents" >추천 컨텐츠</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/explore/" aria-selected="false" data-omni="story:recommended contents:story-learn-more" >더 알아보기</a>
																</li>
													<li >
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" aria-selected="false" data-omni="story:recommended contents:#Our Planet First" >#Our Planet First</a>
																</li>
													<li >
														<a href="https://www.samsung.com/sec/curated/work-from-home/" aria-selected="false" data-omni="story:recommended contents:#Work From Home" >#Work From Home</a>
																</li>
													<li >
														<a href="https://www.samsung.com/sec/curated/game-on/" aria-selected="false" data-omni="story:recommended contents:#Game On" >#Game On</a>
																</li>
													<li >
														<a href="https://samsung.com/sec/explore/samsung-within/reimagine-a-better-planet/" aria-selected="false" data-omni="story:recommended contents:Dreaming of a better earth together" >함께 꿈꾸는 더 나은 지구</a>
																</li>
													<li >
														<a href="https://www.samsung.com/sec/explore/productivity/life/4-eco-friendly-tech-tips-to-shrink-your-carbon-footprint/" aria-selected="false" data-omni="story:recommended contents:Another beginning of an old galaxy" >오래된 갤럭시의 또 다른 시작</a>
																</li>
													<li >
														<a href="https://www.samsung.com/sec/explore/photography/video/how-to-capture-pawesome-videos-of-your-pets/" aria-selected="false" data-omni="story:recommended contents:How to take pictures of your pet's life" >반려동물의 인생샷 찍는 법</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/a66996ae-30b3-4d2a-839e-a8d25a0dbfc8.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="story:photography" >사진&영상 TIP</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/explore/photography/" aria-selected="false" data-omni="story:photography:photography-learn-more" >더 알아보기</a>
																</li>
													<li >
														<a href="/sec/explore/photography/video/" aria-selected="false" data-omni="story:photography:slow_motion" >영상</a>
																</li>
													<li >
														<a href="/sec/explore/photography/still-photos/" aria-selected="false" data-omni="story:photography:lighting" >사진</a>
																</li>
													<li >
														<a href="/sec/explore/photography/with-galaxy/" aria-selected="false" data-omni="story:photography:with_galaxy" >갤럭시 포토 챌린지</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/8fc36512-9224-4219-a603-3136f7472698.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="story:entertainment" >엔터테인먼트</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/explore/entertainment/" aria-selected="false" data-omni="story:entertainment:entertainment-learn-more" >더 알아보기</a>
																</li>
													<li >
														<a href="/sec/explore/entertainment/home-entertainment/" aria-selected="false" data-omni="story:entertainment:home_entertainment" >홈 엔터테인먼트</a>
																</li>
													<li >
														<a href="/sec/explore/entertainment/gaming/" aria-selected="false" data-omni="story:entertainment:gaming" >게임</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/0d9eb4f1-ee43-470b-86bf-84fe36577fba.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="story:health" >건강</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/explore/health/" aria-selected="false" data-omni="story:health:health-learn-more" >더 알아보기</a>
																</li>
													<li >
														<a href="/sec/explore/health/self-care/" aria-selected="false" data-omni="story:health:self-care" >셀프케어</a>
																</li>
													<li >
														<a href="/sec/explore/health/fitness/strengthen-your-body-and-your-relationship/" aria-selected="false" data-omni="story:health:fitness" >피트니스</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/79314640-d1d8-4dbe-ad69-48e9c5964f54.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="story:samsung_within" >Samsung Within</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/explore/samsung-within/" aria-selected="false" data-omni="story:samsung_within:samsung-within-learn-more" >더 알아보기</a>
																</li>
													<li >
														<a href="/sec/explore/samsung-within/beyond-the-limits" aria-selected="false" data-omni="story:samsung_within:Beyond-the-Limits" >Beyond the Limits</a>
																</li>
													<li >
														<a href="/sec/explore/samsung-within/galaxy-collaborations/" aria-selected="false" data-omni="story:samsung_within:1" >갤럭시 컬래버레이션 스토리</a>
																</li>
													<li >
														<a href="/sec/explore/samsung-within/innovation/exclusive-look-at-samsung-x-thom-browne/" aria-selected="false" data-omni="story:samsung_within:exclusive-look-at-samsung-x-thom-browne" >단 하나뿐인 룩을 완성하다</a>
																</li>
													<li >
														<a href="/sec/explore/samsung-within-8/" aria-selected="false" data-omni="story:samsung_within:samsung_within_8" >5G의 오늘과 내일</a>
																</li>
													<li >
														<a href="/sec/explore/samsung-within/innovation/one-giant-leap-for-reality/" aria-selected="false" data-omni="story:samsung_within:one-giant-leap-for-reality" >초고화질 시대를 향한 거대한 도약</a>
																</li>
													<li >
														<a href="/sec/explore/samsung-within/design/the-serif-design-story/" aria-selected="false" data-omni="story:samsung_within:the-serif-design-story" >The Serif 디자인 스토리</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/b84a61ff-d88e-4616-90f7-8f670d2730ea.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="story:productivity" >다양한 활용</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/explore/productivity/" aria-selected="false" data-omni="story:productivity:productivity-learn-more" >더 알아보기</a>
																</li>
													<li >
														<a href="/sec/explore/productivity/work/" aria-selected="false" data-omni="story:productivity:work" >워크</a>
																</li>
													<li >
														<a href="/sec/explore/productivity/life/" aria-selected="false" data-omni="story:productivity:life" >라이프</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/7400bc92-f764-4fa6-9eee-177482bdb194.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="story:event" >전시/행사</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/explore/experiences/ces2021-the-first-look/" aria-selected="false" data-omni="story:event:CES-The-First-Look-2021" >CES The First Look 2021</a>
																</li>
													<li >
														<a href="/sec/explore/experiences/ces2021/" aria-selected="false" data-omni="story:event:Samsung-at-CES-2021 " >Samsung at CES 2021 </a>
																</li>
													<li >
														<a href="/sec/explore/experiences/the-voyage-sets-sail/" aria-selected="false" data-omni="story:event:The-Voyage-Sets-Sail" >The Voyage Sets Sail</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/82f8e87a-4873-4340-aa71-53d3ba88402f.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="story:community" >커뮤니티</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="javascript:;" class="outlink " title="새창으로 열림" onclick="window.open('https://r1.community.samsung.com/t5/korea/ct-p/kr');"
																		aria-selected="false" data-omni="story:community:Samsung Members Comunity">삼성멤버스 커뮤니티</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="https://www.samsung.com/sec/curated/our-planet-first/" data-omni="feature image:story:#Our Planet First:learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/94a80f18-9f51-4a2f-87c2-c9dbdcb7e641.jpg?$ORIGIN_JPG$" alt="#Our Planet First" class="lozad">
																</div>
															<p class="txt">#Our Planet First</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										</ul>
								</div>
							</div>
						</li>
						<li>
							<a href="#" aria-controls="700000115-menu" aria-selected="false" data-omni="support" >고객 서비스</a>
							<div class="gnb2depth">
								<div class="inner">
									<ul class="list">
										<li >
											<a href="#" aria-selected="false" data-omni="support:support" >무엇을 도와드릴까요?</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/support/" aria-selected="false" data-omni="support:support:support-learn-more" >무엇을 도와드릴까요?</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="/sec/support/" data-omni="feature image:support::learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/3823f581-fdc7-4936-8d3c-00cb35ada470.jpg?$ORIGIN_JPG$" alt="무엇을 도와드릴까요?" class="lozad">
																</div>
															<p class="txt">무엇을 도와드릴까요?</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="support:selfserve" >제품 지원</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/support/" aria-selected="false" data-omni="support:selfserve:Manual-download" >매뉴얼 & 다운로드</a>
																</li>
													<li >
														<a href="javascript:;" class="outlink " title="새창으로 열림" onclick="window.open('https://www.samsungsvc.co.kr/solution');"
																		aria-selected="false" data-omni="support:selfserve:faqlist">제품 FAQ</a>
																</li>
													<li >
														<a href="/sec/info/contactus/" aria-selected="false" data-omni="support:selfserve:contactus" >이메일 상담</a>
																</li>
													<li >
														<a href="javascript:;" class="outlink " title="새창으로 열림" onclick="window.open('https://www.samsungsvc.co.kr/consult/remote');"
																		aria-selected="false" data-omni="support:selfserve:remote_service">원격 상담</a>
																</li>
													<li >
														<a href="javascript:;" class="outlink " title="새창으로 열림" onclick="window.open('https://www.samsungsvc.co.kr/consult/call');"
																		aria-selected="false" data-omni="support:selfserve:rescounselview">전화 상담 예약</a>
																</li>
													<li >
														<a href="javascript:;" class="outlink " title="새창으로 열림" onclick="window.open('http://www.g-sis.co.kr/');"
																		aria-selected="false" data-omni="support:selfserve:computeronline">컴퓨터 온라인 상담</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="support:information" >추천 부가정보</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/support/newsalert/" aria-selected="false" data-omni="support:information:newsalert" >고객서비스 알림</a>
																</li>
													<li >
														<a href="/sec/support/warranty/" aria-selected="false" data-omni="support:information:warranty" >워런티</a>
																</li>
													<li >
														<a href="/sec/faq/" aria-selected="false" data-omni="support:information:Samsung-faq" >삼성닷컴 FAQ</a>
																</li>
													<li >
														<a href="javascript:;" class="outlink " title="새창으로 열림" onclick="window.open('https://r1.community.samsung.com/t5/Korea/ct-p/kr');"
																		aria-selected="false" data-omni="support:information:community">삼성멤버스 커뮤니티</a>
																</li>
													<li >
														<a href="/sec/support/galaxy-battery/" aria-selected="false" data-omni="support:information:galaxy-battery" >갤럭시 배터리</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="support:Service center" >서비스 센터</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/digitalplaza/centerMain/" aria-selected="false" data-omni="support:Service center:Service-center_plaza" >서비스센터 찾기</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<!-- //2dep banner -->
											</div>
										</li>
										<li >
											<a href="#" aria-selected="false" data-omni="support:Samsung Care+" >Samsung Care+</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="https://www.samsung.com/sec/Samsung-Care-Plus/IM/" aria-selected="false" data-omni="support:Samsung Care+:Mobile/PC" >모바일/PC</a>
																</li>
													<li >
														<a href="https://www.samsung.com/sec/Samsung-Care-Plus/CE/" aria-selected="false" data-omni="support:Samsung Care+:Home appliance/TV" >가전/TV</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<!-- //2dep banner -->
											</div>
										</li>
										</ul>
								</div>
							</div>
						</li>
						<li>
							<a href="#" aria-controls="700000116-menu" aria-selected="false" data-omni="membership" >멤버십</a>
							<div class="gnb2depth">
								<div class="inner">
									<ul class="list">
										<li >
											<a href="#" aria-selected="false" data-omni="membership:membership_guide" >멤버십 가이드</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/membership/membershipMain/" aria-selected="false" data-omni="membership:membership_guide:membershipmain" >삼성전자 멤버십 소개</a>
																</li>
													<li >
														<a href="/sec/membership/membershipJoin/" aria-selected="false" data-omni="membership:membership_guide:membershipjoin" >가입 안내</a>
																</li>
													<li >
														<a href="/sec/membership/membershipPoint/" aria-selected="false" data-omni="membership:membership_guide:membershippoint" >포인트 안내</a>
																</li>
													<li >
														<a href="/sec/membership/membershipLevel/" aria-selected="false" data-omni="membership:membership_guide:membershiplevel" >등급 & 혜택 안내</a>
																</li>
													<li >
														<a href="/sec/membership/membershipBluecare/" aria-selected="false" data-omni="membership:membership_guide:membershipbluecare" >블루케어 서비스 안내</a>
																</li>
													<li >
														<a href="/sec/membership/membershipMileage/" aria-selected="false" data-omni="membership:membership_guide:membershipmileage" >혼수 혜택 안내</a>
																</li>
													<li >
														<a href="/sec/membership/membershipBluePackage/" aria-selected="false" data-omni="membership:membership_guide:membershipbluepackage" >블루패키지 안내</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<div class="gnbBanner">
														<a href="/sec/membership/membershipJoin/" data-omni="feature image:membership::learn more">
														<div class="img">
																<img data-src="//images.samsung.com/kdp/display/gnb/cd1fbfcd-7d3c-4bb3-b285-94a7b56b74c0.jpg?$ORIGIN_JPG$" alt="나의 멤버십" class="lozad">
																</div>
															<p class="txt">나의 멤버십</p>
															<div class="link">
																<span>더 알아보기</span>
															</div>
														</a>
													</div>
												<!-- //2dep banner -->
											</div>
										</li>
										</ul>
								</div>
							</div>
						</li>
						<li>
							<a href="#" aria-controls="700000117-menu" aria-selected="false" data-omni="digitalplaza" >디지털프라자<span class="icon-dpz" onclick="window.open('https://www.samsung.com/sec/digitalplaza/storeMain/');"><span class="blind">디지털프라자 지점찾기</span></span></a>
									<div class="gnb2depth">
								<div class="inner">
									<ul class="list">
										<li >
											<a href="#" aria-selected="false" data-omni="digitalplaza:home" >디지털프라자</a>
											<div class="gnb3depth ">
												<ul>
												<li >
														<a href="/sec/digitalplaza/main/" aria-selected="false" data-omni="digitalplaza:home:home" >디지털프라자 Home</a>
																</li>
													<li >
														<a href="/sec/digitalplaza/eventList/" aria-selected="false" data-omni="digitalplaza:home:plaza-eventList" >이벤트</a>
																</li>
													<li >
														<a href="/sec/digitalplaza/newOpenStore/" aria-selected="false" data-omni="digitalplaza:home:plaza-newOpenStore" >신규 오픈 매장</a>
																</li>
													<li >
														<a href="/sec/digitalplaza/storeMain/" aria-selected="false" data-omni="digitalplaza:home:store-main" >매장 찾기</a>
																</li>
													<li >
														<a href="/sec/customer/reservationstore/" aria-selected="false" data-omni="digitalplaza:home:reservationstore" >매장 상담 예약</a>
																</li>
													</ul>
												<!-- 2dep banner -->
												<!-- //2dep banner -->
											</div>
										</li>
										</ul>
								</div>
							</div>
						</li>
						<li>
								<a href="javascript:;" class="outlink" title="새창으로 열림" onclick="window.open('http://csr.samsung.com/ko/main.do');" 
										aria-selected="false" data-omni="Social-contribution">사회공헌</a>
									</li>
						<li>
								<a href="javascript:;" class="outlink" title="새창으로 열림" onclick="window.open('https://www.samsung.com/sec/business/');" 
										aria-selected="false" data-omni="Samsung Business">비즈니스</a>
									</li>
						</ul>
					
					<!-- s: markup 추가 0713  모바일용 메뉴 추가 -->
					<input type="hidden" name="useLogin" id="useLogin" value=""/>
					
					<ul class="mob-onlyMenu loginBefore">
						<li><a href="" onclick="NetFunnel_Action({action_id:'b2c_gnb_login'},'/sec/member/indexLogin/?returnUrl=/sec/');return false;" data-omni='login'>로그인</a></li>
						<li><a href="/sec/mypage/order/indexDeliveryList/" data-omni='orders'>주문/배송 조회</a></li>
						<li><a href="/sec/customer/myDigitalReservationSearch/" data-omni='store reservation'>매장상담예약신청 조회</a></li>
					</ul>
					
					<ul class="mob-onlyMenu loginAfter">
						<li class="welcomeMsg"></li>
						<li><a href="/sec/membership/point/" data-omni='my account'>나의 정보</a></li>
						<li><a href="/sec/mypage/order/indexDeliveryList/" data-omni='orders'>주문/배송 조회</a></li>
						<li><a href="/sec/member/logout/" data-omni='logout'>로그아웃</a></li>
					</ul>
					<!-- e: markup 추가 0713  모바일용 메뉴 추가 -->
				
				</nav>
				<button type="button" class="gnb-back" data-omni="gnb:back">이전 메뉴 보기</button>
				<button type="button" class="gnb-close" data-omni="gnb:close">GNB 닫기</button>
			</div>
			
			<div class="header-right gnbMenu">
				<ul>
					<li>
						<input type="hidden" name="useLogin" id="useLogin" value=""/>
						
						<a href="javascript:;" aria-controls="login-menu" aria-selected="false" class="link-login" data-omni="login"><i class="icon ico-large ico-people">로그인</i></a>
						<div class="s-gnbSubWrap textSubWrap loginMenu" id="login-menu">
							<div class="gnbSubRound loginBefore">
								<div>
									<dl>
										<dt><a href="" onclick="NetFunnel_Action({action_id:'b2c_gnb_login'},'/sec/member/indexLogin/?returnUrl=/sec/');return false;" data-omni='login'>로그인</a></dt>
										<dt><a href="/sec/mypage/order/indexDeliveryList/" data-omni='orders'>주문/배송조회</a></dt>
										<dt><a href="/sec/customer/myDigitalReservationSearch/" data-omni='store reservation'>매장상담 예약 신청 조회</a></dt>
									</dl>
								</div>
							</div>
							<div class="gnbSubRound loginAfter">
								<div>
									<dl>
										<dt><span class="greet-txt"></span></dt>
										<dd><a href="/sec/membership/point/" data-omni='my account'>나의 정보</a></dd>
										<dd><a href="/sec/mypage/order/indexDeliveryList/" data-omni='orders'>주문/배송 조회</a></dd>
										<dd><a href="/sec/member/logout/" data-omni='logout'>로그아웃</a></dd>
									</dl>
								</div>
							</div>
						</div>
					</li>
					<li>
						<a href="javascript:;" aria-controls="cart-menu" aria-selected="false" class="link-cart" data-omni="cart"><i class="icon ico-large ico-cart">장바구니</i>
							<span class="cart-inner-count"></span>
						</a>
						<div class="s-gnbSubWrap textSubWrap cartMenu" id="cart-menu">
							<div class="gnbSubRound">
								<div>
									<ul class="gnb-cartList">
									</ul>
									<div class="btn-box">
										<button type="button" class="btn btn-d btn-type2" onclick="NetFunnel_Action({action_id :'b2c_cart_view'},function(ev, ret){location.href='/sec/cart/';});" data-omni="cart">장바구니 보기</button>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<a href="javascript:;" id="link-search" class="link-search" data-omni="search"><i class="icon ico-large ico-zoom">검색</i></a>
					</li>
					<li>
						<a href="javascript:;" class="link-m-nav" data-omni="gnb:open"><i class="icon ico-large ico-nav">전체메뉴</i></a>
					</li>
				</ul>
			</div>
		</div>
    </header>
<!-- e : 머리글 영역 -->
		<!-- s : 통합검색 -->
		<script type="text/javascript">
	var searchInputManager = {
		isMobileDevice: function() {
			var that = this,
			winW = $(window).width();
			if ( winW > 800 ) {
				return 'N';
			} else {
				return 'Y';
			}
		},
		init: function() {
			var that = searchInputManager;
			$.cookie.json = true;
			$.cookie.data = {
				SEARCH_HISTORY : 'sh-b2c',
				SEARCH_MAX_SIZE: 10,
				option: {
					expires: 30,
					path: '/'
				}
			};
			
			that.$appendingTarget = {
				searchHistory: $('#searchkeywordRecent ul.list'),
				popular: $('#searchkeywordPopular ul.list'),
				makeTime: $('#makeTime'),
				autoComplete: $('#searchAuto ul.list')
			};
			
			that.cookieName = $.cookie.data.SEARCH_HISTORY;
			that.isMobileYN = that.isMobileDevice();
		},
		searchHistoryTemplate: function(keyword) {
			return {
				keyword: keyword,
	        	date: searchDatetimestampToString(new Date())
			};
		},
		getKeywordList: function(cookieName) {
			var searchKeywordList = new Array()
			  , dataList = $.cookie(cookieName).data;
			
			if (!dataList || '' == dataList || undefined == dataList) {
				return searchKeywordList;
			}
			
			$.each(dataList, function (idx, element) {
				searchKeywordList.push(element.keyword);
			});
			
			return searchKeywordList;
		},
		saveSearchHistory: function(keyword) {
			var that = searchInputManager
			  , $cookie = $.cookie
			  , cookieValue = $cookie(that.cookieName)
			  , dataList = null;
			
			if ( cookieValue == undefined ) {
				dataList = [ that.searchHistoryTemplate(keyword) ];
			} else {
				if ( cookieValue.length == 0 ) {
					dataList = [ that.searchHistoryTemplate(keyword) ];
					
				} else {
					dataList = cookieValue.data;

				    if($.inArray(keyword, that.getKeywordList(that.cookieName)) >= 0) {
				    	return;
					}
				    
				    if(dataList.length >= $cookie.data.SEARCH_MAX_SIZE) {
				    	dataList.splice(0, 1);
				    }
				    dataList.push(that.searchHistoryTemplate(keyword));
				}
			}
			
			$cookie(that.cookieName, {'data': dataList} , $cookie.data.option);
		},
		getSearchHistory: function() {
			var cookieValue = $.cookie(searchInputManager.cookieName);

			if (undefined != cookieValue) {
				return cookieValue;
			}
		},
		getSearchDate: function(keyword) {
			var date = ''
			  , that = searchInputManager
			  , cookieValue = $.cookie(that.cookieName)
			  , searchHistoryList = that.getSearchHistory();
			
			if ( '' == searchHistoryList || searchHistoryList == undefined || cookieValue == undefined) {
				return date;
			}

			var dataList = cookieValue.data;
			
			var idx = -1;
			for (var i = 0; i < dataList.length; ++i) {
				var keywordInList = dataList[i].keyword;
				
				if ( keywordInList != undefined ) {
				    if (keywordInList.toLocaleLowerCase() == keyword.toLocaleLowerCase()) {
				    	idx = i;
				        break;
				    }
				}
			}
			if ( idx > -1 ) {
				date = dataList[idx].date;
			}

			return date;
		},
		drawSearchHistory: function() {
			var that = searchInputManager
			  , $cookie = $.cookie
			  , cookieValue = $cookie(that.cookieName);

			if ( undefined == cookieValue ) {
				return;
			} else if ( cookieValue.length == 0 ) {
				return;
			}
			
			var dataList = cookieValue.data
			  , template = '';
			
			for( var i = dataList.length-1 ; i >= 0; i--) {
				var element = dataList[i], keyword = element.keyword;
				template += '<li class="item">';
				template += '<a href="javascript:void(0);" class="link">' + keyword + '</a>';
				template += '<button type="button" class="btn-delete delete" keyword="' + keyword + '" onclick="searchInputManager.clearSearchHistory(this)">';
				template += '<span class="blind">삭제</span>';
				template += '</button>';
				template += '</li>';
			}
			that.$appendingTarget.searchHistory.html(template);
			that.$appendingTarget.searchHistory.off('click').on('click', 'a', function(e) {
				that.getSearchResult($(e.target).text());
			});
		},
		clearSearchHistory: function(element) {
			var that = searchInputManager
			  , $element = $(element)
			  , $cookie = $.cookie;
			
			if ($element.hasClass('delete-all')) {
				$.removeCookie( that.cookieName , { path: $cookie.data.option.path });
				that.$appendingTarget.searchHistory.empty();
				
			} else if ($element.hasClass('delete')) {
				var selectedKeyword = $element.attr('keyword')
				  , cookieValue = $cookie(that.cookieName)
				  , dataList = cookieValue.data;
				
				var idx = -1;
				for (var i = 0; i < dataList.length; ++i) {
					var keyword = dataList[i].keyword;
					if ( keyword == undefined ) {
						keyword = 'undefined';
					}
					
				    if (keyword == selectedKeyword) {
				    	idx = i;
				        break;
				    }
				}
				if ( idx > -1 ) {
					dataList.splice(idx, 1);
					$cookie(that.cookieName, {'data': dataList} , $cookie.data.option);
					
					$element.parent().remove();
				}
			}
		},
		callAjax: function(options) {
			$.ajax({
				url: options.url,
				type: options.type,
				data: options.data
				
			}).done(
				function(data, textStatus, jqXHR) {
					if (data.exCode != null && data.exCode !== "") {
						if (options.fail !== undefined) {
							options.fail();
						}
						let alertData = {
			       			title: "alert",
			       			content: data.exMsg
			       	    };
			        	commonAlert(alertData);
			        	openLayer('commonAlert');
					} else {
						options.done(data);
					}
			}).fail(function(jqXHR, textStatus, errorThrown) {
				if (options.fail !== undefined) {
					options.fail();
				}
				if (jqXHR.status !== 0) {
					ajax.error(jqXHR.status, jqXHR.responseText);
				}
			}).always(function() {
			}).then(function(data, textStatus, jqXHR) {
			});
		},

		getRecommendKeyword: function(callback) {
			var that = searchInputManager;
			that.callAjax(
				{
					url: '/sec/xhr/search/recommendkeyword/',
					type: 'GET',
					done: function(result) {
						that.recommendKeyword = result.recommendKeyword;
						
						if ( callback != undefined ) {
							callback();
						}
					}
				}
			);
		},
		setRecommendKeyword: function() {
			var that = searchInputManager;
			
			if ( that.recommendKeyword == undefined ) {
				that.getRecommendKeyword(that.setRecommendKeywordCallback);
				return;
			} 
			that.setRecommendKeywordCallback();
		},
		
		setRecommendKeywordCallback: function() {
			var that = searchInputManager;
			//$('#unifiedInputSearch').attr('placeholder', that.recommendKeyword); // 20200917 삭제
			$('.inp-placeholder').text(that.recommendKeyword); // 20200917 추가
		},
		
		getPopularKeyword: function() {
			var that = searchInputManager;
			that.callAjax(
				{
					url: '/sec/xhr/search/popword/',
					type: 'POST',
					data: new wnAddonParamVo('', 'popword', 'D', 'B2C_SearchWord', 'json', ''),
					done: function(result) {
						var popwordResult = result.popwordResult;
						if ( popwordResult.Data == undefined ) {
							return;
						}
						
						var queryList = popwordResult.Data.Query
						  , popularList = '';
						
						$.each(queryList, function(idx, element) {
						var order = idx + Number(1);
						popularList += '<li class="item">'
							         + '<span class="rank">' + order + '</span>'
							         + '<a href="javascript:void(0);" class="link">' + element.content + '</a>';
							if ( element.updown == 'U' ) {
								popularList += '<span class="change arr-up"><span class="blind">순위상승</span></span>';
							} else if ( element.updown == 'D' ) {
								popularList += '<span class="change arr-down"><span class="blind">순위하락</span></span>';
							} else if ( element.updown == 'C' ) {
								popularList += '<span class="change arr-same"><span class="blind">순위유지</span></span>';
							}
							popularList += '</li>';
						});
						
						that.$appendingTarget.popular.off('click').on('click', 'a', function(e) {
							that.getSearchResult($(e.target).text());
						});
						that.$appendingTarget.popular.empty();
						that.$appendingTarget.makeTime.empty();
						
						that.$appendingTarget.popular.append(popularList);
						that.$appendingTarget.makeTime.append(popwordResult.Data.MakeTime + ' 기준');
					}
				}
			);
		},
		getSearchInputAutoComplete: function(keyword) {
			var that = searchInputManager;
			keyword = keyword.trim();
			
			that.callAjax(
				{
					url: '/sec/xhr/search/autocom/',
					type: 'POST',
					data: new wnAddonParamVo(keyword, 'b2c', '', '', 'json', 'fw'),
					done: function(result) {
						var template = '';
						var autoCompleteResultList = result.autoCompleteResult;
						that.$appendingTarget.autoComplete.empty();
						
						if ( autoCompleteResultList.length > 0 && autoCompleteResultList != undefined ) {
							$.each(autoCompleteResultList, function (idx, element) {
								template += '<li class="item">';
								template += '<a href="javascript:void(0);" class="link" text="' + element.text + '">';
								template +=  (element.modified).replace(/\<!HS\>(.*)\<!HE\>/gi, "\<span class=\"key\"\>$1\</span\>");
								template += '</a>';
								template += '<span class="date">' + searchInputManager.getSearchDate(element.text) + '</span>';
								template += '</li>';
							});
							
							that.$appendingTarget.autoComplete.html(template);

							that.$appendingTarget.autoComplete.off('click').on('click', 'a', function(e) {
								that.getSearchResult($(e.target).attr('text'));
							});
							
							$('.unified-search-layer.type-keyword').hide();
							$('.unified-search-layer.type-auto').show();
							
						} else {
							$('.unified-search-layer.type-auto').hide();
							if ( keyword == '' ) {
								//$('#unifiedInputSearch').attr('placeholder', searchInputManager.recommendKeyword); // 20200917 삭제
								$('.inp-placeholder').text(that.recommendKeyword); // 20200917 추가
								$('.unified-search-layer.type-keyword').show();
							}
						}
					}
				}
			)
		},
		
		getSearchResult: function(keyword, searchResultInputId) {
			console.log(keyword);
			keyword = escapeHtml(keyword);
			
			var that = searchInputManager;
			keyword = keyword.trim();
			console.log("@@ keyword1 : " + keyword);
			keyword = filterAcc(keyword); // 에어컨액세서리
			
			if ( searchResultInputId != undefined ) {
				that.searchResultInputId = searchResultInputId;
			}
			
			if ( keyword == '' ) {
				var recommendKeyword = that.recommendKeyword;
				if ( recommendKeyword == undefined ) {
					that.getRecommendKeyword(that.getSearchResultNoKeywordCallback);
				}
				that.getSearchResultCallback(recommendKeyword);
				return;
			}
			that.getSearchResultCallback(keyword);
		},
		getSearchResultNoKeywordCallback: function() {
			var that = searchInputManager
			  , recommendKeyword = that.recommendKeyword
			  , searchResultInputId = that.searchResultInputId;

			if ( searchResultInputId != undefined ) {
				$(searchResultInputId).val(recommendKeyword);
				$(searchResultInputId).attr('placeholder', recommendKeyword);
			}
			
			that.getSearchResultCallback(recommendKeyword);
		},
		getSearchResultCallback: function(keyword) {
			console.log("@@ start getSearchResultCallback");
			var that	   = searchInputManager
			  , isMobileYN = that.isMobileDevice();
			console.log("@@ keyword : " + keyword);
			that.saveSearchHistory(keyword);
			ajax.call({
				url: '/sec/xhr/search/keywordRedirect?keyword=' + encodeURIComponent(keyword),
				data: new WNSearchParamVo(keyword, '', '', '', '', '', '', '', '', '', '', '', '', 'b2c', isMobileYN),
				dataType : 'json',
				contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
				done: function(result) {
					console.log("@@ ajax success");
					console.log("@@result : " + JSON.stringify(result));
					//yhj
					$(".unified-search-input-wrap").removeClass("is-active"); 
					$("body").removeClass("is-pc is-mo");
					$(".unified-search-layer").hide();
					$("body").removeClass("fixed-scroll");
					$("#gnbmask").hide();
					$(".unified-search-input-wrap .inp").val(""); 
					$(".unified-search-input-wrap .btn-inp-clear").hide(); 
					$(".inp-placeholder").show();
					if ( isSecApp() == "true" ) {
						window.secapp.showAndHideGnb('VISIBLE'); 
					}
					
					
					var keywordRedirect = result.keywordRedirect;
					
					if (keywordRedirect.totalCount > 0) {
						window.location.href = keywordRedirect.REDIRECT_URL;
						return;
					}
					var $form = document.createElement("form");
					$form.setAttribute('charset', 'UTF-8');
					$form.setAttribute('method', 'POST');
					$form.setAttribute('action', '/sec/search/searchresult/?keyword=' + encodeURIComponent(keyword));
					
					var $input = document.createElement('input');
					$input.setAttribute('type', 'hidden');
					$input.setAttribute('name', 'isMobileYN');
					$input.setAttribute('value', searchInputManager.isMobileYN);
					$form.appendChild($input);
					document.body.appendChild($form);
					
					$form.submit();
				}
			});
		}
	}
	
	function filterAcc(keyword) {
		if((keyword.indexOf("에어컨") > -1 || keyword.indexOf("무풍에어컨") > -1) && (keyword.indexOf("액세서리") > -1 || keyword.indexOf("악세서리") > -1 || keyword.indexOf("엑세서리") > -1) ) {
			keyword = "에어컨액세서리";
			console.log("@@ keyword2: " + keyword);
		}
		return keyword;
	}
	
	function escapeHtml (string) { 
		return String(string).replace(/[&<>"'`=\/]/g, function (s) {
        	return entityMap[s]; 
        }); 
	}
	var entityMap = { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;', '/': '&#x2F;', '`': '&#x60;', '=': '&#x3D;' };
	
	/* s: APP용 함수 */
	function isSecApp() {
		return 'false';
	}
	
	function once(func) {
		var flag
		  , result;
		
		return function() {
			if ( flag ) {
				return result;
			}
			flag = true;
			return result = func.apply(this);
		}
	}
	
	/* s : 20200917 수정 */
	var searchLinkforApp = once(function() {
		var that = searchInputManager;
		
		that.setRecommendKeyword();
		that.drawSearchHistory();
		that.getPopularKeyword();
		
	});
	
	function searchOpenforApp() { // 20200917 추가
		searchLinkforApp();
		headerSearch.eventListener.uinifiedSearchOpen();
	}
	/* e : 20200917 수정 */
	
	/* e: APP용 함수 */
	
	$(document).ready(function() {
		var that = searchInputManager;
		
		$('#link-search').on('click', function() {
			that.setRecommendKeyword();
			that.drawSearchHistory();
			that.getPopularKeyword();
		});
		
		$('#unifiedInputSearch').on('keyup', function(e) {
			var $target = $(e.target)
			  , keyword = $target.val().replace(/\\/gi, '');
			$target.val(keyword);
			
			that.getSearchInputAutoComplete(keyword);
		});
		
		$('#unifiedInputSearch').on('click', function() { //20210324 추가
			$('.inp-placeholder').hide();
		});
	});
</script>
<!-- s : 통합검색 -->
<div class="unified-search-input-wrap">
	<div class="unified-search-input-inner">
		<div class="search-box">
			<label for="unifiedInputSearch" class="blind">통합 검색</label><!-- 20200622 for 값 변경 -->
			<input type="text" id="unifiedInputSearch" class="inp" onfocus="headerSearch.eventListener.uinifiedSearchInp()"
			onkeydown="headerSearch.eventListener.uinifiedSearchChange()">
			<span class="inp-placeholder"></span><!-- 20200917 추천검색어 추가 -->
			<button type="button" class="btn-inp-clear" title="삭제"><span class="blind">삭제</span></button><!-- 20200616 삭제 버튼 추가-->
			<button type="button" class="btn-search" title="검색" id="unifiedSearchButton" onclick="javascript:searchInputManager.getSearchResult($('#unifiedInputSearch').val(), '#unifiedInputSearch')"><span class="blind">검색</span></button>
		</div>
	</div>

	<!-- s : 검색레이어 : 최근, 인기-->
	<div class="unified-search-layer type-keyword" style="display:none">
		<div class="unified-search-layer-inner"><!-- 20200618 감싸는 태그 unified-search-layer-inner 추가 -->
			<div class="layer-cont">
				<div class="cont-inner box-recent" id="searchkeywordRecent" role="tabpanel">
					<strong class="tit">최근 검색어</strong>
					<ul class="list">
					</ul>
					<div class="etc"><a href="javascript:void(0);" class="btn-delete delete-all" onclick="searchInputManager.clearSearchHistory(this)">최근 검색어 전체 삭제</a></div>
				</div>
				<div class="cont-inner box-popular" id="searchkeywordPopular" role="tabpanel">
					<strong class="tit">인기 검색어</strong>
					<ul class="list">
					</ul>
					<div class="etc" id="makeTime"><p class="date"></p></div>
				</div>
			</div> 
		</div><!-- 20200618 감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
		<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!-- 20200618 닫는 태그 추가--><!-- 20200622 button type 변경-->
	</div>
	<!-- e : 검색레이어 : 최근, 인기-->

	<!-- s : 검색레이어 : 자동 완성-->
	<div class="unified-search-layer type-auto" style="display:none">
		<div class="unified-search-layer-inner"><!-- 20200618 감싸는 태그 unified-search-layer-inner 추가 -->
			<div class="layer-cont" id="searchAuto">
				<ul class="list">
				</ul>
			</div>
		</div><!-- 20200618 감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
		<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!-- 20200618 닫는 태그 추가--><!-- 20200622 button type 변경-->
	</div>
	<!-- e : 검색레이어 : 자동 완성-->
	
	<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!-- 20200622 button type 변경-->
</div>
<!-- e : 통합검색 --><!-- e : 통합검색 -->

		<!-- s : 본문 영역 -->
		<div id="container" class='' >

			<!-- s : 페이지 로케이션 영역 -->
				<script type="text/javascript">
			getDispPathByUrl();
	        
			function getDispPathByUrl() {
				
				let stId = "1";
				let reqUri = "/sec/";
				reqUri = reqUri.replace("/sec/", "");
				if (reqUri.length == 0) return;
		    	
				let tmp = "";
				
				if("" === "Y") return;
				
				if(reqUri.indexOf('homefitness') > -1) {
					return;
				}
				
				$.ajax({
					 url : "/sec/xhr/display/getGnbByUrl"
					,type : "POST"
					,data : {stId:stId, linkUrl:reqUri}
					,success : function(data) {
						list = data.list;
						if (list == null) return;
		   				
						$.each(list, function(idx, obj) {
							if (obj.linkUrl.length > 0) {
		   						tmp += '<a href="/sec/'+obj.linkUrl+'">'+obj.dispClsfNm+'</a>';
							} else if(obj.dispClsfNm != obj.upDispClsfNm){	//동일명칭 Depth Skip 2020.09.14 YJU
		   						tmp += "<span>"+obj.dispClsfNm+"</span>";
		   					}
		   				});
		   				
						if (tmp == '') return;
						let html = "";
						html += "<div class=\"pg-location-inner locationDiv\">";
						html += "<a href='/sec/'>HOME</a>";
						html += tmp;
						html += "</div>";
						$(".pg-location").html(html);
					}
				});
			}
        </script>
        
        <div class="pg-location">
        </div><!-- e : 페이지 로케이션 영역 -->

				<!-- s : 최근 본 제품 -->
				<div id='latestItemLayer' class='layer-pop layer-normal floatingStyle'>
	<div class='layer-header'>
		<h2>최근 본 제품</h2>
	</div>
		<button type='button' class='pop-close' onclick = "closePop(latestItemLayer)" data-focus-next="latestItemLayer"><span class='blind'>최근 본 제품 닫기</span></button>
	<div class="LatestItm-result">
		<p class="result-tit">
			<span>검색 결과</span><strong class="num">0</strong> 개 
		</p>
		<button type="button" class="btn btn-d btn-allListClear" onclick = "deleteRecentGoods('Y')" data-st-path ="/sec/" data-focus-next="latestItemLayer">전체삭제</button>
	</div>
	<div class="caution-note">※ 최근 본 제품은 7일간 보관됩니다.</div>
</div><!-- e : 최근 본 제품 -->

				<!-- s : b2c 컨텐츠 비주얼 헤더(해당 위치에 있어야 width:100%) -->
	<!-- s : Carousel container -->








<div class="wrap-component carousel-container pt-none pb-none w1920px     ">
	<div class="component-contents pt-none pb-none gt-wrap type-video 
		
		 " style="background-color:#FFFFFF" data-cptnm="kv">
		<div class="slider-carousel-visual gt-slide ind-in ind-line arr-line s4000"
			id="slideCarousel243834">

		<!-- loop -->
			<div class="visual font-sans" data-control="wht" data-arrow="wht" data-ind-title="삼성닷컴 Live">

				<!-- s : component-text -->
				<div class="component-text txt-mid-left txtm-top-center">
					<div class="component-text-inner">

						<div class="box-title">
							<h2 class="title pc-ver " style="color:#FFFFFF">QLED 대형 TV<br>삼성닷컴 Live 알림 신청</h2>
							<h2 class="title mo-ver " style="color:#FFFFFF">QLED 대형 TV<br>삼성닷컴 Live<br>알림 신청</h2>
							<p class="desc mo-ver " style="color:#FFFFFF">6월 29일 오후 7시 방송, 온라인 최저가 도전!<br>최대 36% 할인 + 삼성카드 7% 청구할인 혜택</p>
							<p class="desc pc-ver " style="color:#FFFFFF">6월 29일 오후 7시 방송, 온라인 최저가 도전!<br>최대 36% 할인 + 삼성카드 7% 청구할인 혜택</p>
						</div>

						<div class="box-btns">
							<ul>
								<!-- s : 나열형  CTA -->
								<li>
								<button type="button" class="btn-underline btn-wht"
						    			data-omni="kv_1:삼성닷컴 LIVE:All View" onclick="openCtaLink('https://www.samsung.com/sec/tvs/qled?neoqled_nav','_self')">Live 방송 제품 보기</button>
						    	
								
								<button type="button" class="btn-round btn-wht"
						    			data-omni="kv_1:삼성닷컴 LIVE:Request for Alram" onclick="openCtaLink('https://www.samsung.com/sec/tvs/qled/','_self')">알림 신청하기</button>
						    	</li>
							</ul>
						</div>

					</div>
				</div>
				<!-- e : component-text  -->

				<!-- s:visual-area -->
				<div class="visual-area ">

	                    <picture data-alt="삼성닷컴 LIVE" data-default-src="//images.samsung.com/kdp/cms_contents/119632/01c7b657-e2d8-4b32-868a-0eabb09c32c4.jpg?$ORIGIN_JPG$" data-omni="kv_1:삼성닷컴 LIVE"
							class="objGif">
	                        <source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/cms_contents/119632/2b8e6b37-3e59-499d-8ebb-350f583799a2.jpg?$ORIGIN_JPG$">
	                        <source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/cms_contents/119632/01c7b657-e2d8-4b32-868a-0eabb09c32c4.jpg?$ORIGIN_JPG$">
	                        <img src="//images.samsung.com/kdp/cms_contents/119632/01c7b657-e2d8-4b32-868a-0eabb09c32c4.jpg?$ORIGIN_JPG$" alt="삼성닷컴 LIVE" data-omni="kv_1:삼성닷컴 LIVE"
								class="objGif">
	                    </picture>
 <!-- endif : bundle.visualType == "video" -->
				</div>
				<!-- e: visual-area -->

			</div>
			<div class="visual font-sans" data-control="blk" data-arrow="blk" data-ind-title="갤럭시북 런칭">

				<!-- s : component-text -->
				<div class="component-text txt-mid-left txtm-top-center">
					<div class="component-text-inner">

						<div class="box-title">
							<h2 class="title pc-ver " style="color:#000000">Galaxy Book I Pro I Pro 360<br>런칭</h2>
							<h2 class="title mo-ver " style="color:#000000">Galaxy Book I<br>Pro I Pro 360 런칭</h2>
							<p class="desc mo-ver " style="color:#000000">삼성카드 5% 청구할인<br>+ 포토 상품평 참여 시 노트북 스탠드 증정</p>
							<p class="desc pc-ver " style="color:#000000">삼성카드 5% 청구할인<br>+ 포토 상품평 참여 시 노트북 스탠드 증정</p>
						</div>

						<div class="box-btns">
							<ul>
								<!-- s : 나열형  CTA -->
								<li>
								<button type="button" class="btn-round btn-blk"
						    			data-omni="kv_2:GalaxyBook:View purchase benefits" onclick="openCtaLink('https://www.samsung.com/sec/store-model/new-galaxy-book/launching/','_self')">구매 혜택 보기</button>
						    	</li>
							</ul>
						</div>

					</div>
				</div>
				<!-- e : component-text  -->

				<!-- s:visual-area -->
				<div class="visual-area ">

	                    <picture data-alt="GalaxyBook" data-default-src="//images.samsung.com/kdp/cms_contents/119310/15fe594a-4180-4962-9281-4f472b419572.jpg?$ORIGIN_JPG$" data-omni="kv_2:GalaxyBook"
							class="objGif">
	                        <source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/cms_contents/118132/769994b0-6b6a-4d25-8701-9e4efc5cf19c.jpg?$ORIGIN_JPG$">
	                        <source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/cms_contents/119310/15fe594a-4180-4962-9281-4f472b419572.jpg?$ORIGIN_JPG$">
	                        <img src="//images.samsung.com/kdp/cms_contents/119310/15fe594a-4180-4962-9281-4f472b419572.jpg?$ORIGIN_JPG$" alt="GalaxyBook" data-omni="kv_2:GalaxyBook"
								class="objGif">
	                    </picture>
 <!-- endif : bundle.visualType == "video" -->
				</div>
				<!-- e: visual-area -->

			</div>
			<div class="visual " data-control="wht" data-arrow="wht" data-ind-title="국민가전 페스타">

				<!-- s : component-text -->
				<div class="component-text txt-mid-left txtm-top-center">
					<div class="component-text-inner">

						<div class="box-title">
							<h2 class="title pc-ver " style="color:#FFFFFF">삼성전자 국민가전 페스타</h2>
							<h2 class="title mo-ver " style="color:#FFFFFF">삼성전자 국민가전 페스타</h2>
							<p class="desc mo-ver " style="color:#FFFFFF">국민 베스트 셀러! 최대 120만원 쿠폰 할인 + 공동구매 혜택</p>
							<p class="desc pc-ver " style="color:#FFFFFF">국민 베스트 셀러! 최대 120만원 쿠폰 할인 + 공동구매 혜택</p>
						</div>

						<div class="box-btns">
							<ul>
								<!-- s : 나열형  CTA -->
								<li>
								<button type="button" class="btn-underline btn-wht"
						    			data-omni="kv_3:국민가전페스타:Learn more" onclick="openCtaLink('https://www.samsung.com/sec/store-model/runtogether2021/','_self')">더 알아보기</button>
						    	
								
								<button type="button" class="btn-round btn-wht"
						    			data-omni="kv_3:국민가전페스타:See purchase benefits" onclick="openCtaLink('https://www.samsung.com/sec/store-model/runtogether2021/buy/','_self')">구매 혜택 보기</button>
						    	</li>
							</ul>
						</div>

					</div>
				</div>
				<!-- e : component-text  -->

				<!-- s:visual-area -->
				<div class="visual-area ">

	                    <picture data-alt="국민가전페스타" data-default-src="//images.samsung.com/kdp/cms_contents/118405/7659fbf6-637c-4271-91b7-50c3cde3f6a7.jpg?$ORIGIN_JPG$" data-omni="kv_3:국민가전페스타"
							class="objGif">
	                        <source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/cms_contents/118405/fc523a8a-df89-4a75-b272-46dfc0063caa.jpg?$ORIGIN_JPG$">
	                        <source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/cms_contents/118405/7659fbf6-637c-4271-91b7-50c3cde3f6a7.jpg?$ORIGIN_JPG$">
	                        <img src="//images.samsung.com/kdp/cms_contents/118405/7659fbf6-637c-4271-91b7-50c3cde3f6a7.jpg?$ORIGIN_JPG$" alt="국민가전페스타" data-omni="kv_3:국민가전페스타"
								class="objGif">
	                    </picture>
 <!-- endif : bundle.visualType == "video" -->
				</div>
				<!-- e: visual-area -->

			</div>
			<div class="visual " data-control="wht" data-arrow="wht" data-ind-title="QLED l Galaxy S21">

				<!-- s : component-text -->
				<div class="component-text txt-mid-left txtm-top-center">
					<div class="component-text-inner">

						<div class="box-title">
							<h2 class="title pc-ver " style="color:#FFFFFF">스포츠의 감동을<br>함께. 보다. 크게</h2>
							<h2 class="title mo-ver " style="color:#FFFFFF">스포츠의 감동을<br>함께. 보다. 크게</h2>
							<p class="desc mo-ver " style="color:#FFFFFF">QLED & Galaxy S21<br>더할수록 커지는 최대 229만원 혜택으로 만나보세요</p>
							<p class="desc pc-ver " style="color:#FFFFFF">QLED & Galaxy S21<br>더할수록 커지는 최대 229만원 혜택으로 만나보세요</p>
						</div>

						<div class="box-btns">
							<ul>
								<!-- s : 나열형  CTA -->
								<li>
								<button type="button" class="btn-round btn-wht"
						    			data-omni="kv_4:Multi View:See purchase benefits" onclick="openCtaLink('https://www.samsung.com/sec/store-model/multiview/launching/','_self')">구매 혜택 보기</button>
						    	</li>
							</ul>
						</div>

					</div>
				</div>
				<!-- e : component-text  -->

				<!-- s:visual-area -->
				<div class="visual-area ">

	                    <picture data-alt="Multi View" data-default-src="//images.samsung.com/kdp/cms_contents/118619/85e75986-1021-40c1-83a6-852eeb146e1d.png?$ORIGIN_JPG$" data-omni="kv_4:Multi View"
							class="objGif">
	                        <source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/cms_contents/118619/1cbd2f5c-b56d-4927-9aaa-16253b1691f8.png?$ORIGIN_JPG$">
	                        <source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/cms_contents/118619/85e75986-1021-40c1-83a6-852eeb146e1d.png?$ORIGIN_JPG$">
	                        <img src="//images.samsung.com/kdp/cms_contents/118619/85e75986-1021-40c1-83a6-852eeb146e1d.png?$ORIGIN_JPG$" alt="Multi View" data-omni="kv_4:Multi View"
								class="objGif">
	                    </picture>
 <!-- endif : bundle.visualType == "video" -->
				</div>
				<!-- e: visual-area -->

			</div>
			<div class="visual " data-control="wht" data-arrow="wht" data-ind-title="BESPOKE 무풍에어컨">

				<!-- s : component-text -->
				<div class="component-text txt-mid-left txtm-top-center">
					<div class="component-text-inner">

						<div class="box-title">
							<h2 class="title pc-ver " style="color:#FFFFFF">2021 NEW<br>BESPOKE 무풍에어컨 갤러리</h2>
							<h2 class="title mo-ver " style="color:#FFFFFF">2021 NEW<br>BESPOKE 무풍에어컨 갤러리</h2>
							<p class="desc mo-ver " style="color:#FFFFFF">진짜를 가져. 나의 무풍</p>
							<p class="desc pc-ver " style="color:#FFFFFF">진짜를 가져. 나의 무풍</p>
						</div>

						<div class="box-btns">
							<ul>
								<!-- s : 나열형  CTA -->
								<li>
								<button type="button" class="btn-underline btn-wht"
						    			data-omni="kv_5:삼성닷컴 LIVE성:All View" onclick="openCtaLink('https://www.samsung.com/sec/air-conditioners/gallery/','_self')">모든 제품 보기</button>
						    	
								
								<button type="button" class="btn-round btn-wht"
						    			data-omni="kv_5:삼성닷컴 LIVE성:Buy a product" onclick="openCtaLink('https://www.samsung.com/sec/air-conditioners/package-af17ax773yzr/AF17AX773YZRS/','_self')">구매하기</button>
						    	</li>
							</ul>
						</div>

					</div>
				</div>
				<!-- e : component-text  -->

				<!-- s:visual-area -->
				<div class="visual-area ">

	                    <picture data-alt="삼성닷컴 LIVE성" data-default-src="//images.samsung.com/kdp/cms_contents/119513/03d30ef2-2a00-40f3-8777-b9c319d80e4f.jpg?$ORIGIN_JPG$" data-omni="kv_5:삼성닷컴 LIVE성"
							class="objGif">
	                        <source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/cms_contents/119513/c7cad86e-966d-459d-b79c-8f5e86d818c3.jpg?$ORIGIN_JPG$">
	                        <source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/cms_contents/119513/03d30ef2-2a00-40f3-8777-b9c319d80e4f.jpg?$ORIGIN_JPG$">
	                        <img src="//images.samsung.com/kdp/cms_contents/119513/03d30ef2-2a00-40f3-8777-b9c319d80e4f.jpg?$ORIGIN_JPG$" alt="삼성닷컴 LIVE성" data-omni="kv_5:삼성닷컴 LIVE성"
								class="objGif">
	                    </picture>
 <!-- endif : bundle.visualType == "video" -->
				</div>
				<!-- e: visual-area -->

			</div>
			<div class="visual font-sans" data-control="wht" data-arrow="wht" data-ind-title="Galaxy S21 5G">

				<!-- s : component-text -->
				<div class="component-text txt-mid-left txtm-top-center">
					<div class="component-text-inner">

						<div class="box-title">
							<h2 class="title pc-ver " style="color:#ffffff">Galaxy S21 I S21+<br>S21 Ultra 5G</h2>
							<h2 class="title mo-ver " style="color:#ffffff">Galaxy S21 I S21+<br>S21 Ultra 5G</h2>
							<p class="desc mo-ver " style="color:#ffffff">지금 삼성닷컴에서<br>중고폰 추가보상 혜택으로 만나보세요!</p>
							<p class="desc pc-ver " style="color:#ffffff">지금 삼성닷컴에서 중고폰 추가보상 혜택으로 만나보세요!</p>
						</div>

						<div class="box-btns">
							<ul>
								<!-- s : 나열형  CTA -->
								<li>
								<button type="button" class="btn-underline btn-wht"
						    			data-omni="kv_6:Galaxy S21:Learn more_0128" onclick="openCtaLink('/sec/smartphones/galaxy-s21-5g/','_self')">더 알아보기</button>
						    	
								
								<button type="button" class="btn-round btn-wht"
						    			data-omni="kv_6:Galaxy S21:Purchase" onclick="openCtaLink('https://www.samsung.com/sec/smartphones/all-smartphones/?galaxy-s','_self')">구매하기</button>
						    	</li>
							</ul>
						</div>

					</div>
				</div>
				<!-- e : component-text  -->

				<!-- s:visual-area -->
				<div class="visual-area ">

	                    <picture data-alt="Galaxy S21" data-default-src="//images.samsung.com/kdp/cms_contents/112228/36df8943-9a27-4279-876b-5983eae0ff0f.jpg?$ORIGIN_JPG$" data-omni="kv_6:Galaxy S21"
							class="">
	                        <source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/cms_contents/112228/a7e56a13-6597-4825-8486-6cb828e32184.jpg?$ORIGIN_JPG$">
	                        <source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/cms_contents/112228/36df8943-9a27-4279-876b-5983eae0ff0f.jpg?$ORIGIN_JPG$">
	                        <img src="//images.samsung.com/kdp/cms_contents/112228/36df8943-9a27-4279-876b-5983eae0ff0f.jpg?$ORIGIN_JPG$" alt="Galaxy S21" data-omni="kv_6:Galaxy S21"
								class="">
	                    </picture>
 <!-- endif : bundle.visualType == "video" -->
				</div>
				<!-- e: visual-area -->

			</div>
			<div class="visual " data-control="wht" data-arrow="wht" data-ind-title="홈 피트니스">

				<!-- s : component-text -->
				<div class="component-text txt-mid-left txtm-bottom-center">
					<div class="component-text-inner">

						<div class="box-title">
							<h2 class="title pc-ver " style="color:#FFFFFF">홈 피트니스 런칭</h2>
							<h2 class="title mo-ver " style="color:#FFFFFF">홈 피트니스 런칭</h2>
							<p class="desc mo-ver " style="color:#FFFFFF">언택트 시대에 호텔 신라 피트니스 수업을<br>내집에서 만나다</p>
							<p class="desc pc-ver " style="color:#FFFFFF">언택트 시대에 호텔 신라 피트니스 수업을 내집에서 만나다</p>
						</div>

						<div class="box-btns">
							<ul>
								<!-- s : 나열형  CTA -->
								<li>
								<button type="button" class="btn-round btn-wht"
						    			data-omni="kv_7:Getting Started with Home Fitness:Getting Started with Home Fitness" onclick="openCtaLink('https://www.samsung.com/sec/homefitness/','_self')">첫달 무료! 홈 피트니스 시작하기</button>
						    	</li>
							</ul>
						</div>

					</div>
				</div>
				<!-- e : component-text  -->

				<!-- s:visual-area -->
				<div class="visual-area vdoDim">


						<!-- AutoPlay상태가 아니면 컨틀롤 버튼 생성(embed만 autoplay가능) -->

						<!-- embed용 영상play -->

							<div class="video" data-id="video_243834_6_vod" data-src="//images.samsung.com/kdp/cms_contents/119632/543e3082-101a-4896-aea3-29098d4c446a.mp4" data-type="video"
								data-auto="true" data-loop="true" data-m-src="//images.samsung.com/kdp/cms_contents/119632/c5c36e0b-46c6-4c01-bfbc-c0c92cb3100b.mp4"
								data-omni="kv_7:Getting Started with Home Fitness_play video">
								<div class="target"></div>

							</div>

							<article class="box-article blind">
								<div class="alt-content">Getting Started with Home Fitness</div>
							</article>
					 <!-- endif : bundle.visualType == "video" -->
				</div>
				<!-- e: visual-area -->

			</div>
			<!-- loop -->
		</div>
		<!-- e: slider-carousel-visual -->

		<div class="slider-controls">
        	<div class="wrap-controls type-title"></div>
        	<!-- 재생/일시정지 버튼 자동 슬라이드인경우 노출 -->
			<button type="button" class="slide-btn slide-play"><span class="blind">재생</span></button>
			<button type="button" class="slide-btn slide-pause"><span class="blind">정지</span></button>
        </div>

		<!-- S : 레이어팝업으로 비디오 play -->
		<!-- E : 레이어팝업으로 비디오 play -->

	</div>
	<!-- e : component-contents -->
	<!-- 비주얼 슬라이드 이미지 로드 방식 변경 : 스크립트 -->
	<script type="text/javascript" src="./resources/introjs/picturePolyfill.min.js"></script>
	<script>
		if (device.isApp == true) {
			$('#slideCarousel243834').on('init', function(event, slick){
				console.log("data-control : " + slick.$slides[0].dataset.control);
				try {
					window.secapp.setSecAppGnbTheme(slick.$slides[0].dataset.control);
				} catch (err) {
				}
			});
		}

		var ctarrow_243834 = true;
		var ctindi_243834 = true;
		if (device.val == 'p') {
			if ("001" != "001") {
				ctindi_243834 = false;
			}
			if ("001" != "001") {
				ctarrow_243834 = false;
			}
		} else {
			if ("001" != "001") {
				ctindi_243834 = false;
			}
			if ("001" != "001") {
				ctarrow_243834 = false;
			}
		}
		vodCompoSlide('#slideCarousel243834', 'type1', 4000, ctarrow_243834, ctindi_243834);

		$(window).resize(function () {
            ctarrow_243834 = true;
			ctindi_243834 = true;
			if (device.val == 'p') {
				if ("001" != "001") {
					ctindi_243834 = false;
				}
				if ("001" != "001") {
					ctarrow_243834 = false;
				}
			} else {
				if ("001" != "001") {
					ctindi_243834 = false;
				}
				if ("001" != "001") {
					ctarrow_243834 = false;
				}
			}

            $('#slideCarousel243834').slick('slickSetOption', { dots: ctindi_243834, arrows: ctarrow_243834 }, true);
            if (ctindi_243834){
                $('#slideCarousel243834').parent().find('.slider-controls').removeClass('hide');
            } else {
                $('#slideCarousel243834').parent().find('.slider-controls').addClass('hide');
            }
        });

		$(function(){
		    $('#slideCarousel243834').on({
		        afterChange : function(event, slick, currentSlide) {

		        	var videoWrap = $(slick.$slides[currentSlide])[0];
		        	//console.log("data-control : " + videoWrap.dataset.control);

		            // Native App Script(wht:로고 화이트, 투명 바탕 , blk:로고 블랙, 투명 바탕)
		            if (navigator.userAgent.indexOf('SECAPP') > 0) {
		            	try {
							window.secapp.setSecAppGnbTheme(videoWrap.dataset.control);
						} catch (err) {
						}
		            }
		        }
		    });
		});

	</script>

</div>
<!-- e : Carousel container-->
<div class="layer-pop popup-comp-wrap popup-comp-player" id="videoLayer_210420_1" tabindex="0" data-popup-layer="videoLayer_210420_1" data-focus="videoLayer_210420_1">
	
	<div class="popup-component-contents">
		<div class="component-head popup-com-head">
			<strong class="head-title blind">영상보기</strong>
			<button type="button" class="pop-close" data-focus-next="videoLayer_210420_1" onclick="closeReplyVideo();" data-omni="kv_1:새로운 Galaxy:Notification Request_close">닫기</button>
		</div>
		<div class="component-content">
			<div class="video">
				<div id="videoLayer_210420_1Vod"></div>
			</div>
			<script>
					vodPlayer.create("PUtk3ryShOo","videoLayer_210420_1Vod","youtube", false, function() { 
			$('#videoLayer_210420_1Vod').attr('allowfullscreen',true);
			$('#videoLayer_210420_1Vod').attr('mozallowfullscreen',true);
			$('#videoLayer_210420_1Vod').attr('webkitallowfullscreen',true);}, false);
			</script>
		</div>
		
		<article class="box-article blind">
			<div class="alt-content">새로운 Galaxy</div>
		</article>
	</div>
</div>

<script>
	$(".carousel-container ul li button[data-omni='kv_1:새로운 Galaxy:Notification Request']").attr("onclick", "viewReplyVideo();");

	function viewReplyVideo(){
		vodPlayer.play('videoLayer_210420_1Vod');
		pauseKV();
	}
	function closeReplyVideo(){
		vodPlayer.stop('videoLayer_210420_1Vod');
		$('.carousel-container .slide-play').click();
	}
	function pauseKV(){
		$('.carousel-container .slide-pause').click();
	}
	
	$(".carousel-container ul li button[data-omni='kv_1:새로운 Galaxy:Notification Request']").attr("data-popup-target", "videoLayer_210420_1");

    $(document).on('scroll', function(e) {
	if($('#slideCarousel234781').next().attr('class') == 'slider-controls ready paused'){
		$(".slide-play").show()
	}
	if($('#slideCarousel234781').next().attr('class') == 'slider-controls ready'){
		$(".slide-pause").show()
	}
});
</script>

<style>
@media screen(max-width: 800px)
.wrap-component .component-text.txtm-bottom-right .box-title .title.mo-ver{font-size:7.667vw}
}
@media screen(max-width: 300px)
.wrap-component .component-text.txtm-bottom-right .box-title .title.mo-ver{font-size:6.667vw}
}
</style>

<tiles:putattribute name="tooltip"><div id="tooltipArea_Event3791"></div></tiles:putattribute>
<tiles:putattribute name="popup"><div id="popupArea_Event3791"></div></tiles:putattribute>
<input type="hidden" id="openPop" data-st-path="/sec/">
<!-- e : b2c 컨텐츠 비주얼 헤더 -->
		
	<div class="content">
		<!-- s : conbox 영역 -->
		<section class="conbox conbox-b2c-main">

		<!-- s : COMPONENT Template : Tab Container  -->

<!-- s : wrap-component -->
<div class="wrap-component tabtype-container pt-nrw pb-nrw w1440px ">
	<div class="component-contents  pt-none pb-none"  style="background-color:#FFFFFF" data-cptnm="merchandising">

		<div class="component-text">
			<div class="component-text-inner">
				<!-- s : HeadLine -->
				<div class="box-title">
					<h2 class="title mo-ver " style="color:#000000"></h2>
					<h2 class="title pc-ver " style="color:#000000"></h2>
				</div>
				<!-- e : HeadLine -->
			</div>
		</div>



		<!-- s : tablist-prd-container -->
		<div class="tablist-prd-container">

			<!-- s : Tab Title -->
            <div class="slider-tab-title" id="sliderTabTitle_243839">
            	<div class="swiper-wrapper">
	                <div class="swiper-slide title"><button type="button" data-omni="merchandising:Select Shop">셀렉트샵</button></div>
	                <div class="swiper-slide title"><button type="button" data-omni="merchandising:">삼성 케어 플러스</button></div>
	                <div class="swiper-slide title"><button type="button" data-omni="merchandising:new galaxy_im">새로운 갤럭시</button></div>
	                <div class="swiper-slide title"><button type="button" data-omni="merchandising:event_other">특별한 혜택</button></div>
	                <div class="swiper-slide title"><button type="button" data-omni="merchandising:">국민가전 페스타</button></div>
                </div>
            </div>
            <!-- e : Tab Title -->

            <!-- s :  slider -->
            <div class="slider-tabtype-list" id="sliderTabList_243839">
            	<div class="swiper-wrapper">

	                <div class="swiper-slide set-tab-prd  " >
	                    <div class="set-tab-prd-inner">


		                        <div class="tab-prd-list type1">




	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/smartphones/all-smartphones/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:Trade in">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/9fd16500-d3bc-429a-b24d-eefe16b841fe.png?$330_330_PNG$" alt="Trade in" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/cba6aa5f-a2e5-4115-93c4-d9044e4e53a6.jpg?$330_330_JPG$" alt="Trade in" title="">
	                                        </picture>
	                                        <figcaption class="blind">Trade in</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/galaxycampus" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:Galaxy Campus Store">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/116968/e8f2a348-aa4a-4c8e-bd1d-ff63df154264.jpg?$330_330_JPG$" alt="갤럭시 캠퍼스 스토어" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/119516/0623a9ad-3cbe-4cd2-9dac-b31bff73497a.jpg?$330_330_JPG$" alt="갤럭시 캠퍼스 스토어" title="">
	                                        </picture>
	                                        <figcaption class="blind">갤럭시 캠퍼스 스토어</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/store-model/weddingshop" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:Wedding">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/0b78f346-5f93-425b-b68f-ce2889fc3b4e.jpg?$330_330_JPG$" alt="웨딩 신혼샵" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/0a7f6150-7dab-4972-af8b-f092a9f17951.jpg?$330_330_JPG$" alt="웨딩 신혼샵" title="">
	                                        </picture>
	                                        <figcaption class="blind">웨딩 신혼샵</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/recommended/all-recommended/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:Recommended model">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/759b2d59-dbda-4e8d-af0c-46a1fc755db4.jpg?$330_330_JPG$" alt="추천모델" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/1a0f78f1-88df-4567-ac36-c48733e37016.jpg?$330_330_JPG$" alt="추천모델" title="">
	                                        </picture>
	                                        <figcaption class="blind">추천모델</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/homefitness/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:Home Fitness">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/119599/a8f1fa7b-f9c5-4c8a-afe8-ad5d5289f298.jpg?$330_330_JPG$" alt="홈피트니스" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/119599/5bb5d170-a0ff-4087-acd1-f6d3b8bc6f98.jpg?$330_330_JPG$" alt="홈피트니스" title="">
	                                        </picture>
	                                        <figcaption class="blind">홈피트니스</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/outlets/all-outlets/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:outlet">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/113344/6d902017-d67a-4674-a908-7eee991f77b5.jpg?$330_330_JPG$" alt="아울렛" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/113344/19301323-b006-4668-b026-a60c5dfa7b88.jpg?$330_330_JPG$" alt="아울렛" title="">
	                                        </picture>
	                                        <figcaption class="blind">아울렛</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/chatbot/?type=ep&c=m#/" target="_blank" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:Online">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/d4178021-813f-42ab-bb40-5736d606f0a0.jpg?$330_330_JPG$" alt="온라인구매상담" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/b06fd2fa-e1fd-41db-b33c-83e6c91a856a.jpg?$330_330_JPG$" alt="온라인구매상담" title="">
	                                        </picture>
	                                        <figcaption class="blind">온라인구매상담</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->


	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/customer/reservationstore/?ref=floating/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:Select Shop:Store visit reservation">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/e06bf3f5-acf5-4836-8532-447f1d785a8c.png?$330_330_PNG$" alt="매장방문예약" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117051/6d7dd8ac-d48b-4b26-8d2f-daf6d7d016b3.png?$330_330_PNG$" alt="매장방문예약" title="">
	                                        </picture>
	                                        <figcaption class="blind">매장방문예약</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->


	                        <!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                        </div><!-- e : tab-prd-list -->


	                    </div><!-- e : set-tab-prd-inner -->
	                </div><!-- e : set-tab-prd -->

	                	                <div class="swiper-slide set-tab-prd  " >
	                    <div class="set-tab-prd-inner">


	                        	<div class="tab-prd-list type11 col-2">



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/Samsung-Care-Plus/IM/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising::Mobile/PC">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/114170/f684ddb3-41b4-403c-aae0-4435200a7cb4.jpg?$330_330_JPG$" alt="모바일/PC" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/114170/7a6e41f0-61d2-4f59-905a-3dac17aea647.jpg?$684_684_JPG$" alt="모바일/PC" title="">
	                                        </picture>
	                                        <figcaption class="blind">모바일/PC</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/Samsung-Care-Plus/CE/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising::Home Appliances/TV">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/114170/e500783f-8b44-478b-9c18-d202ddef86c7.jpg?$330_330_JPG$" alt="가전/TV" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/114170/5cd89fe8-a5d2-4788-8fcb-06095b774840.jpg?$684_684_JPG$" alt="가전/TV" title="">
	                                        </picture>
	                                        <figcaption class="blind">가전/TV</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->


	                        <!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                        </div><!-- e : tab-prd-list -->


	                    </div><!-- e : set-tab-prd-inner -->
	                </div><!-- e : set-tab-prd -->

	                	                <div class="swiper-slide set-tab-prd rounded " >
	                    <div class="set-tab-prd-inner">


		                        <div class="tab-prd-list type2 type-center">




	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->
	                            <div class="prd-item-grp">


	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/smartphones/galaxy-s21-5g-g991/SM-G991NZVEKOO/" target="_self" class="prd-item-inner " data-omni="merchandising:new galaxy_im:SM-G991N|SM-G991NZVEKOO">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2021/01/12/467c8ada-bd18-4233-9449-bc1367739bc7.png?$240_240_PNG$" alt="갤럭시 S21 5G 자급제" title="SM-G991NZVEKOO">
	                                        </picture>
	                                        <figcaption class="blind">갤럭시 S21 5G 자급제</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">갤럭시 S21 5G 자급제</span>
	                                        <span class="num">SM-G991NZVEKOO</span>
	                                        <span class="memb"><span id="243839_2_G000190012_prclbl">회원가</span><em id="gdPrc_243839_2_G000190012_price">999,900 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/smartphones/galaxy-m12-m127/SM-M127NZKAKOO/" target="_self" class="prd-item-inner " data-omni="merchandising:new galaxy_im:SM-M127N|SM-M127NZKAKOO">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2021/04/28/53227fd6-6e43-466c-97b4-e531d54ae6e3.png?$240_240_PNG$" alt="갤럭시 M12 자급제" title="SM-M127NZKAKOO">
	                                        </picture>
	                                        <figcaption class="blind">갤럭시 M12 자급제</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">갤럭시 M12 자급제</span>
	                                        <span class="num">SM-M127NZKAKOO</span>
	                                        <span class="memb"><span id="243839_2_G000191460_prclbl">회원가</span><em id="gdPrc_243839_2_G000191460_price">198,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->
	                            </div>



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->




	                            <div class="prd-item point   " >
	                                <a href="https://www.samsung.com/sec/store-model/new-galaxy-book/launching/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:new galaxy_im:Galaxy Book Launching">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117193/3dc8cc70-9dbd-423c-b52c-46dab91b4a29.jpg?$684_684_JPG$" alt="Galaxy Book Launching" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/117193/434f8b2b-cb76-4d79-a38b-a6e753b940e1.jpg?$684_684_JPG$" alt="Galaxy Book Launching" title="">
	                                        </picture>
	                                        <figcaption class="blind">Galaxy Book Launching</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->
	                            <div class="prd-item-grp">


	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/tablets/galaxy-tab-s7-plus-wifi-t970/SM-T970NDBBKOO/" target="_self" class="prd-item-inner " data-omni="merchandising:new galaxy_im:SM-T970|SM-T970NDBBKOO">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2021/03/18/801765c2-cb43-4258-95da-1a850c9104bf.png?$240_240_PNG$" alt="갤럭시 탭 S7+ (Wi-Fi)" title="SM-T970NDBBKOO">
	                                        </picture>
	                                        <figcaption class="blind">갤럭시 탭 S7+ (Wi-Fi)</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">갤럭시 탭 S7+ (Wi-Fi)</span>
	                                        <span class="num">SM-T970NDBBKOO</span>
	                                        <span class="memb"><span id="243839_2_G000190853_prclbl">혜택가</span><em id="gdPrc_243839_2_G000190853_price">1,249,100 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/buds/galaxy-buds-pro-r190/SM-R190NZVAKOO/" target="_self" class="prd-item-inner " data-omni="merchandising:new galaxy_im:SM-R190|SM-R190NZVAKOO">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2020/12/28/b76645bc-0204-48a0-a8be-deac054c42f6.png?$240_240_PNG$" alt="갤럭시 버즈 프로" title="SM-R190NZVAKOO">
	                                        </picture>
	                                        <figcaption class="blind">갤럭시 버즈 프로</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">갤럭시 버즈 프로</span>
	                                        <span class="num">SM-R190NZVAKOO</span>
	                                        <span class="memb"><span id="243839_2_G000192646_prclbl">회원가</span><em id="gdPrc_243839_2_G000192646_price">239,800 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->


	                        <!-- 영역이 나누어져 있는경우 layer 그룹핑 -->
	                   		</div> <!-- e : prd-item-grp -->

	                        </div><!-- e : tab-prd-list -->


	                    </div><!-- e : set-tab-prd-inner -->
	                </div><!-- e : set-tab-prd -->

	                	                <div class="swiper-slide set-tab-prd rounded no-square" >
	                    <div class="set-tab-prd-inner">


	                        	<div class="tab-prd-list type11">




	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/event/galaxycampusstore/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:event_other:갤럭시 캠퍼스 스토어  신규 가입 이벤트 2021.06.24 ~ 2021.07.31갤">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/119599/8af6fb72-da81-4174-be54-03f3d2a095c6.jpg?$ORIGIN_JPG$" alt="갤럭시 캠퍼스 스토어  신규 가입 이벤트 2021.06.24 ~ 2021.07.31" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/119599/67403087-a2f0-46bc-8e56-53e2817c058c.jpg?$ORIGIN_JPG$" alt="갤럭시 캠퍼스 스토어  신규 가입 이벤트 2021.06.24 ~ 2021.07.31" title="">
	                                        </picture>
	                                        <figcaption class="blind">갤럭시 캠퍼스 스토어  신규 가입 이벤트 2021.06.24 ~ 2021.07.31</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/store-model/runtogether2021/buy/" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:event_other:Festa">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/118622/8c7ae0fa-eb5a-4d9f-9b6c-9cab62748d6d.jpg?$ORIGIN_JPG$" alt="Festa" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/118577/19756c53-9af1-4571-9437-d57822ab1efb.jpg?$ORIGIN_JPG$" alt="Festa" title="">
	                                        </picture>
	                                        <figcaption class="blind">Festa</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#000000;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="https://www.samsung.com/sec/store-model/dhsale-2021/buy" target="_self" class="prd-item-inner fullbleed" data-omni="merchandising:event_other:대한민국 동행세일">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
		                                            <img class="obj-m lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/119599/ae5e46a1-617a-4fce-af9e-fad857c9bd57.jpg?$ORIGIN_JPG$" alt="대한민국 동행세일" title="">
													<img class="lozad objGif" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/cms_contents/119599/829e0042-4570-4236-9749-2cc4daf996b9.jpg?$ORIGIN_JPG$" alt="대한민국 동행세일" title="">
	                                        </picture>
	                                        <figcaption class="blind">대한민국 동행세일</figcaption>
	                                    </figure>

	                                    <div class="prd-name" style="color:#FFEF88;">
	                                        <span class="tit"></span>
	                                        <span class="txt"></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->


	                        <!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                        </div><!-- e : tab-prd-list -->


	                    </div><!-- e : set-tab-prd-inner -->
	                </div><!-- e : set-tab-prd -->

	                	                <div class="swiper-slide set-tab-prd rounded " >
	                    <div class="set-tab-prd-inner">


		                        <div class="tab-prd-list type1">




	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/air-conditioners/package-af17tx773fzr-d2c/AF17TX773FZRT/" target="_self" class="prd-item-inner " data-omni="merchandising::AF17TX773FZRT|AF17TX773FZRT">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2021/05/31/1290abee-7540-458c-a433-3680a28416df.png?$240_240_PNG$" alt="무풍에어컨 갤러리 (56.9 ㎡ + 18.7 ㎡)" title="AF17TX773FZRT">
	                                        </picture>
	                                        <figcaption class="blind">무풍에어컨 갤러리 (56.9 ㎡ + 18.7 ㎡)</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">무풍에어컨 갤러리 (56.9 ㎡ + 18.7 ㎡)</span>
	                                        <span class="num">AF17TX773FZRT</span>
	                                        <span class="memb"><span id="243839_4_G000211430_prclbl">혜택가</span><em id="gdPrc_243839_4_G000211430_price">2,449,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/tvs/uhd-ua7000fxkr-d2c/KU70UA7000-W1/" target="_self" class="prd-item-inner " data-omni="merchandising::KU85UA7000F|KU70UA7000-W1">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2021/05/31/dfc8b395-8f92-411b-b0a9-28c78223e10a.png?$240_240_PNG$" alt="UHD 176 cm 스위블 벽걸이형" title="KU70UA7000-W1">
	                                        </picture>
	                                        <figcaption class="blind">UHD 176 cm 스위블 벽걸이형</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">UHD 176 cm 스위블 벽걸이형</span>
	                                        <span class="num">KU70UA7000-W1</span>
	                                        <span class="memb"><span id="243839_4_G000211441_prclbl">혜택가</span><em id="gdPrc_243839_4_G000211441_price">1,890,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/refrigerators/package-rf85t95g1apcc-d2c/RF85T95G1APCC/" target="_self" class="prd-item-inner " data-omni="merchandising::RF85T95G1APCC|RF85T95G1APCC">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2021/04/29/106d305f-83c3-4a4e-952f-2d6af9a126a7.png?$240_240_PNG$" alt="20년형 BESPOKE 냉장고 4도어 프리스탠딩 패밀리허브 859 L" title="RF85T95G1APCC">
	                                        </picture>
	                                        <figcaption class="blind">20년형 BESPOKE 냉장고 4도어 프리스탠딩 패밀리허브 859 L</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">20년형 BESPOKE 냉장고 4도어 프리스탠딩 패밀리허브 859 L</span>
	                                        <span class="num">RF85T95G1APCC</span>
	                                        <span class="memb"><span id="243839_4_G000192692_prclbl">혜택가</span><em id="gdPrc_243839_4_G000192692_price">3,499,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/washing-machines/package-wf21t9500kv6t-d2c/WF21T9500KV6T/" target="_self" class="prd-item-inner " data-omni="merchandising::WF21T9500KV6T|WF21T9500KV6T">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2021/03/05/a189da56-d5bf-459b-be17-0d9264e94239.png?$240_240_PNG$" alt="그랑데 AI 올인원 세탁기 + 건조기  세트 (21 kg+16 kg)" title="WF21T9500KV6T">
	                                        </picture>
	                                        <figcaption class="blind">그랑데 AI 올인원 세탁기 + 건조기  세트 (21 kg+16 kg)</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">그랑데 AI 올인원 세탁기 + 건조기  세트 (21 kg+16 kg)</span>
	                                        <span class="num">WF21T9500KV6T</span>
	                                        <span class="memb"><span id="243839_4_G100179722_prclbl">혜택가</span><em id="gdPrc_243839_4_G100179722_price">2,149,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/dishwashers/package-dw60t7065sss-d2c/DW60T7065SSS/" target="_self" class="prd-item-inner " data-omni="merchandising::DW60T7065SSS|DW60T7065SSS">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/kdp/goods/2020/10/30/bd3e0007-eb84-4ff3-80c5-07aaecce9d7f.png?$240_240_PNG$" alt="식기세척기 세미 빌트인 12인용" title="DW60T7065SSS">
	                                        </picture>
	                                        <figcaption class="blind">식기세척기 세미 빌트인 12인용</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">식기세척기 세미 빌트인 12인용</span>
	                                        <span class="num">DW60T7065SSS</span>
	                                        <span class="memb"><span id="243839_4_G100179728_prclbl">혜택가</span><em id="gdPrc_243839_4_G100179728_price">790,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/airdresser/airdresser-df60t8700cg-D2C/DF60T8700CG/" target="_self" class="prd-item-inner " data-omni="merchandising::DF60T8700CG|DF60T8700CG">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/is/image/samsung/sec-airdresser-df60t8700cg-df60t8700cg-fronttopazblue-316058014?$240_240_PNG$" alt="에어드레서 일반용량" title="DF60T8700CG">
	                                        </picture>
	                                        <figcaption class="blind">에어드레서 일반용량</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">에어드레서 일반용량</span>
	                                        <span class="num">DF60T8700CG</span>
	                                        <span class="memb"><span id="243839_4_G000191542_prclbl">혜택가</span><em id="gdPrc_243839_4_G000191542_price">1,149,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->



	                            <div class="prd-item    " >
	                                <a href="/sec/vacuum-cleaners/jet-vs15r8548s5-d2c2/VS15R8548S5/" target="_self" class="prd-item-inner " data-omni="merchandising::VS15R8548S5|VS15R8548S5">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/is/image/samsung/sec-jet-vs15r8548s5-vs15r8548s5-frontsilver-178637870?$240_240_PNG$" alt="제트 150W" title="VS15R8548S5">
	                                        </picture>
	                                        <figcaption class="blind">제트 150W</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">제트 150W</span>
	                                        <span class="num">VS15R8548S5</span>
	                                        <span class="memb"><span id="243839_4_G000211296_prclbl">혜택가</span><em id="gdPrc_243839_4_G000211296_price">599,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->



	                    		<!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                            <!-- TYPE2, TYPE3, TYPE4 강조 item class -->


	                            <div class="prd-item    " >
	                                <a href="/sec/kimchi-refrigerators/kimchi-top-loading-rp20t31a17z-d2c/RP20T31A1G2/" target="_self" class="prd-item-inner " data-omni="merchandising::RP20T31A17Z|RP20T31A1G2">

	                                    <figure class="prd-figure">
	                                        <picture class="fig-img">
	                                                <img class="lozad" src="/sec/static/_images/common/img_baseimg_null.png" data-src="//images.samsung.com/is/image/samsung/sec-kimchi-top-loading-rp20t31a1g2-rp20t31a1g2-frontlightgray-309031188?$240_240_PNG$" alt="김치플러스 뚜껑형 202 L" title="RP20T31A1G2">
	                                        </picture>
	                                        <figcaption class="blind">김치플러스 뚜껑형 202 L</figcaption>
	                                    </figure>

	                                    <div class="prd-name">
	                                        <span class="tit name">김치플러스 뚜껑형 202 L</span>
	                                        <span class="num">RP20T31A1G2</span>
	                                        <span class="memb"><span id="243839_4_G100179658_prclbl">혜택가</span><em id="gdPrc_243839_4_G100179658_price">650,000 원</em></span>
	                                    </div>

	                                    <!-- 동영상인 경우 Play버튼 표시 -->
	                                </a>

	                                <!-- s : embbed 동영상 Play 영역 -->
	                                <!-- e : embbed 돟영상 Play 영역 -->


	                            </div>

	                            <!-- e : prd-item-gr (영역이 나누어져 있는경우 layer 그룹핑) -->


	                        <!-- 영역이 나누어져 있는경우 layer 그룹핑 -->

	                        </div><!-- e : tab-prd-list -->


	                    </div><!-- e : set-tab-prd-inner -->
	                </div><!-- e : set-tab-prd -->

	                <!-- end buldle vo list loop -->

                </div>
            </div><!-- e : slider -->


            <!-- s : Video Play layer popup (별도팝업) -->







	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            


	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
             <!-- END : list 1..videoCnt as idx  -->
               <!-- END : if videoCnt gt 0 -->
            






	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
             <!-- END : list 1..videoCnt as idx  -->
               <!-- END : if videoCnt gt 0 -->
            






	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
             <!-- END : list 1..videoCnt as idx  -->
               <!-- END : if videoCnt gt 0 -->
            






	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
             <!-- END : list 1..videoCnt as idx  -->
               <!-- END : if videoCnt gt 0 -->
            






	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            



	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
            


	        <!-- item속성이 동영상인 경우만 -->
   <!-- END : if itemType=="2" -->
             <!-- END : list 1..videoCnt as idx  -->
               <!-- END : if videoCnt gt 0 -->
             <!-- END : list bundleList as bundle -->

            <!-- e : Video Play layer popup -->

		</div> <!-- e : tablist-prd-container -->
		 <!-- endif : bundleList?exists && bundleList?has_content  -->

	</div> <!-- e : component-contents -->
</div> <!-- s : wrap-component -->


<script src="./resources/introjs/lozad.min.js"></script>
<script src="./resources/introjs/polyfill.min.js"></script>
<script>


$(function(){
	var sliderTabTitle243839 = new Swiper('#sliderTabTitle_243839', {
		slidesPerView: 'auto',
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
	});
	var slideBtn = $('#sliderTabTitle_243839').find('button');
	slideBtn.on('click',function(){
		var $this = $(this);
		var idx = $this.parent().index();
		sliderTabTitle243839.slideTo(idx);
	});
	var sliderTabList243839 = new Swiper('#sliderTabList_243839', {
		initialSlide: 0,
		autoHeight: true,
		thumbs: {
			swiper: sliderTabTitle243839
		}
	});

	const observer = lozad("#sliderTabList_243839 .lozad");
	observer.observe();

	/* 2020-10-13 : 슬라이드 탭 정렬 제어 스크립트 추가 */
	var sliderTabWrapId243839 = $('#sliderTabTitle_243839');
	var sliderTabWrapW243839 = sliderTabWrapId243839.children('.swiper-wrapper').outerWidth();
	var sliderTabItemTotal243839 = 0;
	sliderTabWrapId243839.children('.swiper-wrapper').children('.title').each(function(i){
		var itemW = $(this).outerWidth();
		sliderTabItemTotal243839 = sliderTabItemTotal243839 + Math.round(itemW);
	});
	if( sliderTabWrapW243839 < sliderTabItemTotal243839){
		sliderTabWrapId243839.removeClass('md-center');
	} else {
		sliderTabWrapId243839.addClass('md-center');
	}
	$(window).resize(function () {
		sliderTabWrapW243839 = sliderTabWrapId243839.children('.swiper-wrapper').outerWidth();
		sliderTabItemTotal243839 = 0;
		sliderTabWrapId243839.children('.swiper-wrapper').children('.title').each(function(i){
			var itemW = $(this).outerWidth();
			sliderTabItemTotal243839 = sliderTabItemTotal243839 + Math.round(itemW);
		});
		if( sliderTabWrapW243839 < sliderTabItemTotal243839){
			sliderTabWrapId243839.removeClass('md-center');
		} else {
			sliderTabWrapId243839.addClass('md-center');
		}
	});
	/* //2020-10-13 : 슬라이드 탭 정렬 제어 스크립트 추가 */

    // 상품가격 Ajax 실시간 조회후 셋팅
    $(window).on("load",function() {
    	var goodsObjArr = $("[id^=gdPrc_243839]");
    	if (goodsObjArr == null || goodsObjArr.length == 0) return;
    	fnGetLastPrdPrice(goodsObjArr, '/sec/');
    });
});
</script>
<!-- e : COMPONENT Template : Tab Container  -->

<!-- s : marketing content -->
		<!-- s : marketing content -->
	<!-- 2020-11-30 : 추가 -->
	<style>
		.common-marketing-content .box-visual .video-wrap .video-pc > video {width: 100%;}
		.common-marketing-content .pc-ver {display: block;}
		.common-marketing-content .mo-ver {display: none;}

		@media screen and (max-width: 800px) {
			.common-marketing-content .pc-ver {display: none;}
			.common-marketing-content .mo-ver {display: block;}
					.common-marketing-content .box-visual .video-wrap .video-mo video{max-width:100%}
		}
		#ht_samsungOne .slide-item .box-txt .txt { font-family: 'SamsungOneKorean'; }
	</style>
	<!-- //2020-11-30 : 추가 -->
	<div class="b2c-box b2c-box-marketing">
		<div class="common-marketing-content theme-color-black"><!-- 첫번째영상 theme color로 설정-->
			<h2 class="box-tit">모바일 &amp; PC</h2>
			<div class="slide-box">
			<!-- s : 2021-03-05 순서변경 -->


                
				
				<div class="slide-item" data-omni="galaxycampus_learn more" data-theme-color="black" data-ind-title="갤럭시 캠퍼스 스토어">
					<div class="box-visual">
						<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/b77b59fe-32be-4fe2-a55a-e25a47fb68fe.jpg"></div>
						<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/bf35d0d4-6748-477a-a991-d6b6d840bf74.jpg"></div>
					</div>
					<div class="box-txt">
						<p class="txt">갤럭시 캠퍼스 스토어</p>
						<p class="sub-txt"> 대학생, 대학원생과 대학 교원, 교직원을 위한<br>교육 할인 스토어를 만나보세요!</p>
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/galaxycampus/" data-omni="product marketing:im:galaxycampus_learn more">더 알아보기</a></p>
						</div>
					</div>
				</div>    
					   
				<div class="slide-item" data-omni="Everything about the Galaxy" data-theme-color="white" data-ind-title="Galaxy Line-up">
					
					<div class="box-visual">
						

						<div class="video-wrap">
							<div class="video video-pc">
								<div id="marketingVod06-01-pc"></div>
							</div>
							<div class="video video-mo">
								<div id="marketingVod06-01-mo"></div>
							</div>
						</div>
					</div>
					<script>
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/112277/21bb3a7e-51a1-4e8d-80f9-b498b4b81628.mp4","marketingVod06-01-pc","video", true);
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/112277/d629a66b-d89f-496c-bbe0-f79ba74ca1af.mp4","marketingVod06-01-mo","video", true);
					</script>
					<div class="box-txt">
						<p class="txt">다양한 갤럭시를<br>만나보세요</p>
						
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="/sec/galaxy/home/" data-omni="product marketing:im:Everything about the Galaxy">더 알아보기</a></p>
						</div>
					</div>
			</div>  
					   

				<div class="slide-item" data-omni="galaxystudio" data-theme-color="white" data-ind-title="온라인 체험존">
					<div class="box-visual">
						<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/104177/7df56429-10bc-4f48-84e3-dc6aa7ffff99.jpg"></div>
						<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/104177/a94b3ef8-9925-4418-bdb6-f2fd09c3b92e.jpg"></div>
					</div>
					<div class="box-txt">
						<p class="txt">갤럭시 S21번지 집콕 빌리지</p>
						<p class="sub-txt">각양각색 집콕 스토리를 지금 바로 확인해 보세요!</p>
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="/sec/galaxy-s21/experience/" data-omni="product marketing:im:experience_Enter">입장하기</a></p>
						</div>
					</div>
				</div>

				<div class="slide-item" data-omni="product marketing:im:galaxystudio" data-theme-color="black" data-ind-title="Galaxy Studio">
					<div class="box-visual">
						<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/112277/2c4ba538-a9ab-43fa-a6af-2ce2e57e7e7b.jpg"></div>
						<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/112277/9917bd57-a6c3-40c1-99e0-3041ab11591a.jpg"></div>
					</div>
					<div class="box-txt">
						<p class="txt">Galaxy Studio</p>
						<p class="sub-txt">새로운 갤럭시의 놀랍고 새로운 기능들을 마음껏 체험하세요</p>
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/galaxy-s21/galaxystudio/" data-omni="product marketing:im:galaxystudio:galaxystudio_learn more">체험하기</a></p>
						</div>
					</div>
				</div>
				
				
				
			</div>
		</div>
		<div class="common-marketing-content theme-color-black"><!-- 첫번째영상 theme color로 설정-->
			<h2 class="box-tit">TV &amp; 오디오</h2>
			<div class="slide-box">
				
                <div class="slide-item" data-omni="product marketing:vd:Eco-Package" data-theme-color="black" data-ind-title="에코패키지">
					<div class="box-visual">
						<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/112277/ce7d81df-1dff-4f70-a20a-0508ffaa0a1a.jpg"></div>
						<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/112277/e046a71f-754f-4ff5-a432-d72f236d600f.jpg"></div>
					</div>
					<div class="box-txt">
						<!-- s : 210122 텍스트 수정 -->
						
						<p class="txt">버려지는 박스의 멋진 변신</p>
						<p class="sub-txt">나도 웃고 지구도 웃는 라이프 스타일의 시작! <br class="br-mo">#에코패키지 챌린지에 동참하세요</p>		
						<div class="btns">
							<p class="btn-item"><a class="btn-underline" href="https://www.samsung-ecopackage.com/" data-omni="product marketing:vd:Eco-Package:Eco-Package_learn more">더 알아보기</a></p>
							<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/store-model/lifestyletv2021/launching/" data-omni="product marketing:vd:완전한재활용:완전한재활용_challenge">챌린지 동참하기</a></p>
						</div>
						<!-- e : 210122 텍스트 수정 -->
					</div>
				</div>

				

				<div class="slide-item" data-omni="product marketing:vd:the premiere" data-theme-color="white" data-ind-title="프리미엄 존">
					<div class="box-visual">
						<div class="visual-mo"><img alt="" src="//images.samsung.com/kdp/editor/common/202011/1b18afa3-c14f-4efc-a8a0-53b326010dc3.jpg"></div>
						<div class="video-wrap">
							<div class="video video-pc">
								<div id="marketingVod02-01-pc"></div>
							</div>
						</div>
						<div class="video-small-wrap">
							<div class="video video-mo">
								<div id="marketingVod02-01-mo"></div>
							</div>
						</div>
					</div>
					<script>
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/104177/1ee15d1b-8597-408c-b285-70197bbb2b74.mp4","marketingVod02-01-pc","video", true);
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/104177/1ee15d1b-8597-408c-b285-70197bbb2b74.mp4","marketingVod02-01-mo","video", true);
					</script>
					<div class="box-txt">
						<p class="txt">The Premiere</p>
						<p class="sub-txt">영화관보다 더 영화관처럼<br>4K 프리미어 빔으로 누리는 홈시네마</p>
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="/sec/lifestyletv/all-lifestyletv/?the-premiere" data-omni="product marketing:vd:the premiere:the premiere_purchase">제품 모두 보기</a></p>
						</div>
					</div>
				</div>

				<div class="slide-item" data-omni="product marketing:vd:micro led" data-theme-color="white" data-ind-title="MICRO LED">
					<div class="box-visual">
						<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/104177/ae46f838-a838-42d5-bdee-62799c92e9b3.jpg"></div>
						<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/104177/3c296101-54e7-4c8d-975f-8a9bc6e06499.jpg"></div>
					</div>
					<div class="box-txt">
						<!-- s : 210122 텍스트 수정 -->
						<p class="sub-txt">Born to be incomparable</p>
						<div class="txt" style="letter-spacing:1px;"><span class="txt" style="font-weight:400">MICRO</span> LED</div>
						<p class="sub-txt">지금껏 보지 못했던<br>새로운 빛의 세계를 체험해보세요</p>		
						<div class="btns">
							<p class="btn-item"><a class="btn-underline" href="/sec/micro-led/micro-led-ms1acxkr/MNA110MS1ACXKR/" data-omni="product marketing:vd:micro led:micro led_learn more">자세히 보기</a></p>
							<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/search-store/#micro-led" data-omni="product marketing:vd:micro led:micro led_seach store">매장 찾기</a></p>
						</div>
						<!-- e : 210122 텍스트 수정 -->
					</div>
				</div>

				<div class="slide-item" data-omni="product marketing:vd:smart moniter citation" data-theme-color="white" data-ind-title="스마트 모니터">
					<div class="box-visual">
						<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/104177/52f8e79b-1adc-414f-89f8-cd158b2dcd8e.jpg"></div>
						<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/104177/fe0e60b8-81fe-4742-a1ed-0016034d149c.jpg"></div>
					</div>
					<div class="box-txt">
						<p class="txt">미국 주요 매체 선정 <br class="br-mo">'최고의 모니터'</p>
						<p class="sub-txt">나만의 공간에서 하나로 즐기는 올인원 스크린</p>
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="/sec/monitors/LS32AM702UKXKR/LS32AM702UKXKR/" data-omni="product marketing:vd:smart moniter citation:smart moniter citation_purchase-benefits">구매하기</a></p>

						</div>
					</div>
				</div>
				
				<div class="slide-item" data-omni="product marketing:vd:jbl 75 anniversary" data-theme-color="white" data-ind-title="JBL 75주년">
					<div class="box-visual">
						<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/18741163-b40b-4d46-8bbd-f318d6358698.jpg"></div>
						<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/f84203ec-498b-4e2c-a830-dcbec62d2e5f.jpg"></div>
					</div>
					<div class="box-txt">
						<p class="txt">하만 스피커 6년 연속<br class="br-mo"> 세계 판매 1위 기념!</p>
						<p class="sub-txt">삼성닷컴 단독 최대 79% 서프라이즈 할인 혜택을 만나보세요</p>
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/store-model/jbl75th/" data-omni="product marketing:vd:jbl 75 anniversary:jbl 75 anniversary_purchase-benefits">구매 혜택 보기</a></p>

						</div>
					</div>
				</div>
				
			</div>
		</div>

		<div id="ht_samsungOne" class="common-marketing-content theme-color-black"><!-- 첫번째영상 theme color로 설정-->
			<h2 class="box-tit">가전</h2>
			<div class="slide-box">
			
			<div class="slide-item" data-omni="product marketing:da:BESPOKE 식기세척기" data-theme-color="black" data-ind-title="BESPOKE 식기세척기">
				<div class="box-visual">
					<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/5b0e8c4b-2428-43e5-820f-c0f9416c0237.png"></div>
					<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/9782c78b-0542-468b-8e60-8d8e4710b739.png"></div>
				</div>
				<div class="box-txt">
					<p class="txt">BESPOKE 식기세척기 런칭</p>
					<p class="sub-txt">더 새로워진 BESPOKE 식기세척기를<br class="br-mo"> 최대 67만원 혜택으로 만나보세요</p>
					<div class="btns">
						<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/store-model/bespoke-dishwasher/launching" data-omni="product marketing:da:BESPOKE 식기세척기">구매 혜택 보기</a></p>
					</div>
				</div>
			</div>	
			
			 <div class="slide-item" data-omni="product marketing:da:adornment" data-theme-color="white" data-ind-title="온라인 체험존">
					
					<div class="box-visual">
						

						<div class="video-wrap">
							<div class="video video-pc">
								<div id="marketingVod05-01-pc"></div>
							</div>
							<div class="video video-mo">
								<div id="marketingVod05-01-mo"></div>
							</div>
						</div>
					</div>
					<script>
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/112277/dc55ebbf-79d8-4292-a1a6-7fe4f9bf16d9.mp4","marketingVod05-01-pc","video", true);
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/112277/6003b769-e803-4488-954d-3eff752deed1.mp4","marketingVod05-01-mo","video", true);
					</script>
					<div class="box-txt">
						<p class="txt">BESPOKE 나답게 집꾸</p>
						<p class="sub-txt">내 취향에 맞는 BESPOKE로 공간을 나답게 꾸며 보세요!</p>
						<div class="btns">
							<p class="btn-item"><a class="btn btn-d btn-type4" href="/sec/bespoke/home/experience/" data-omni="product marketing:da:adornment:BESPOKE House adornment">BESPOKE 체험하기</a></p>
						</div>
					</div>
			</div>
			
			
			
			
            <div class="slide-item" data-omni="product marketing:da:BESPOKE JET&amp;SLIM" data-theme-color="black" data-ind-title="BESPOKE 제트&amp;슬림">
				<div class="box-visual">
					<div class="visual-pc"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/81483be0-659d-407f-81dd-560c84720417.jpg"></div>
					<div class="visual-mo"><img alt="" src="https://images.samsung.com/kdp/cms_contents/118663/4710e751-132e-44d5-8e74-f56f5ec9f7b9.jpg"></div>
				</div>
				<div class="box-txt">
					<p class="txt">BESPOKE 제트 &amp; 슬림 런칭</p>
					<p class="sub-txt">삼성닷컴 단독 최대 22만 상당 혜택 증정</p>
					<div class="btns">		
                        <p class="btn-item"><a class="btn-underline" href="https://www.samsung.com/sec/event/2021-jet-reviewer-2" data-omni="product marketing:da:BESPOKE JET&amp;SLIM request">체험단 신청하기</a></p>
						<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/store-model/bespokejet/" data-omni="product marketing:da:BESPOKE JET&amp;SLIM">구매 혜택 보기</a></p>
					</div>
				</div>
			</div>				
				
				<div class="slide-item" data-omni="product marketing:da:bespoke home" data-theme-color="white" data-ind-title="BESPOKE HOME">				
					<div class="box-visual">		
						<div class="video-wrap">
							<div class="video video-pc">
								<div id="marketingVod03-01-pc"></div>
							</div>
							<div class="video video-mo" id="marketingVod03-01-wrap">
								<div id="marketingVod03-01-mo"></div>
							</div>
						</div>
					</div>
					<script>
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/118663/82321272-e865-4496-88f1-4c203d59780c.mp4","marketingVod03-01-pc","video", true);
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/118663/60a2ed49-1649-4963-b164-573fa561538f.mp4","marketingVod03-01-mo","video", true);
					</script>
					<div class="box-txt">
						<p class="txt">BESPOKE HOME</p>
						<p class="sub-txt">우리집을 비스포크하다</p>
						<div class="btns">
							<p class="btn-item"><a class="btn-underline" href="https://www.samsung.com/sec/bespokestudio" data-omni="product marketing:da:bespoke home:360 color Combination">360 컬러 조합하기</a></p>
							<p class="btn-item"><a class="btn btn-d btn-type4" href="https://www.samsung.com/sec/bespoke/home/" data-omni="product marketing:da:bespoke home:bespoke home_learn more">더 알아보기</a></p>
						</div>
					</div>
		        </div>

                

			<div class="slide-item" data-omni="product marketing:da:chefcollection" data-theme-color="white" data-ind-title="셰프컬렉션">
					
					<div class="box-visual">
						

						<div class="video-wrap">
							<div class="video video-pc">
								<div id="marketingVod01-01-pc"></div>
							</div>
							<div class="video video-mo" id="marketingVod01-01-wrap">
								<div id="marketingVod01-01-mo"></div>
							</div>
						</div>
					</div>
					<script>
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/104177/5d385d6c-9e49-4f2d-aa73-5f2e39fe556f.mp4","marketingVod01-01-pc","video", true);
						vodPlayer.create("https://images.samsung.com/kdp/cms_contents/104177/d2316549-9d49-424a-9e68-0e2ea39487c5.mp4","marketingVod01-01-mo","video", true);
					</script>
					<div class="box-txt">
						<p class="txt">셰프컬렉션</p>
						<p class="sub-txt">완벽을 소유하다</p>
						<div class="btns">
							<p class="btn-item"><a class="btn-underline" href="/sec/refrigerators/all-refrigerators/?chefcollection" data-omni="product marketing:da:chefcollection:chefcollection_view all product">제품 모두 보기</a></p>
							<p class="btn-item"><a class="btn btn-d btn-type4" href="/sec/chefcollection/buy/" data-omni="product marketing:da:chefcollection:Chef Collection Combination">조합하여 구매하기</a></p>
						</div>
					</div>
			</div>

			   

			</div>
		</div>

	<!-- e : marketing content -->

	<script>
	// s : 20200910 스크립트 추가

	var marketing = {}

	window.addEventListener('load', function(){

			$(".common-marketing-content").each(function(idx){

					marketing['box'+idx] = [];

					var $this = $(this);

					var boxMenu = $this.find('.box-menu');

					var list = boxMenu.find('li');

					list.each(function(){

							var _this = $(this);

							marketing['box'+idx].push(_this.position().left);

					})

			})

	});

	 

	// e : 20200910 스크립트 추가

	var contentMarketing = {

			slideMarketing : function () {

					$(".common-marketing-content .slide-box").each(function(i){

							var target = $(this);

							$(this).before('<div class="box-menu" id="box-menu-'+i+'"></div>');

							target.slick({

									autoplay : false,

									arrows: false,

									infinite: false,

									dots: true,

									appendDots: '#box-menu-'+i,

									customPaging: function(slider, index) {

											var title = $(slider.$slides[index]).attr('data-ind-title');

											var dataOmni = $(slider.$slides[index]).attr('data-omni');

	 

											return "<button type='button' class='btn-menu' data-omni='" + dataOmni + "'>" + title + "</button>";

									},

									responsive: [

											{

													breakpoint: 801,

													settings: {

															autoplay : false,

													},

											}

									]

							});

					});

	 

					var target = $(".common-marketing-content .slide-box");

					target.on('afterChange', function(event, slick, currentSlide) {

							target.prev('.box-menu').find('li').attr('aria-hidden',"false");

							var box = $(this).closest(".common-marketing-content");

							var idx_box = box.index();

							var videoAll = box.find('video');

							box.find(".box-menu").animate({ scrollLeft : marketing['box'+idx_box][currentSlide] },500);

							var videoWrap = $(slick.$slides[currentSlide])[0];

							vodStateControl(videoWrap, 'play');

					});

	 

					target.on('beforeChange', function(event, slick, currentSlide, nextSlide) {

							target.prev('.box-menu').find('li').attr('aria-hidden',"false");

							var box = $(this).closest(".common-marketing-content");

							if ( $(slick.$slides[nextSlide]).attr('data-theme-color') == 'black' ) {

									box.removeClass('theme-color-white').addClass('theme-color-black');

							} else {

									box.removeClass('theme-color-black').addClass('theme-color-white');

							}

							var videoWrap = $(slick.$slides[currentSlide])[0];

							vodStateControl(videoWrap, 'stop');

					});

					

					setTimeout(function(){

							$('.slick-dots').find('li').attr('aria-hidden',"false");

					},500);

					

					var vodStateControl = function(el, type){

							if($(window).width() > 800 ) {

									var videoWrap = el.querySelector('.video-pc');

							}else {

									var videoWrap = el.querySelector('.video-mo');

							}

							if(videoWrap) {

									if($(window).width() > 800 ) {

											var video = el.querySelector('.video-pc > video');

									}else {

											var video = el.querySelector('.video-mo > video');

									}

									if(video) {

											var vodId = video.getAttribute('id');

											if(type == 'play') {

													vodPlayer.play(vodId);

											} else {

													vodPlayer.stop(vodId);

											}

									}

							}

							return false;

					}

			},

			init: function () {

					var that = this;

					that.slideMarketing();

			}

	};

	 

	$(document).ready(function () {

			contentMarketing.init(); // marketing content

	});

	</script></div>


<!-- e : marketing content -->
		
		<!-- s : story content -->
		<!-- s : story content -->
<!-- START -->
<style type="text/css">
	/* 스토리 : 웹 접근성 포커스 적용 CSS */
	.conbox-b2c-main .box-story .box-slide{position:relative;}
	.conbox-b2c-main .box-story .box-item.slick-active .txt-box{min-height: 116px;}
	.conbox-b2c-main .box-story .box-item .box{position:absolute;overflow:hidden;opacity:0;}
	.conbox-b2c-main .box-story .box-item.slick-active .box{opacity:1;}
	.conbox-b2c-main .box-story .box-item .btn-more{display:block !important;}
@media (min-width: 1101px) and (max-width: 1440px){
.conbox-b2c-main .box-story .box-head .tit a{
    font-size: 3.4722vw;
    line-height: 5.0000vw;
}
}
	@media (min-width: 801px) and (max-width: 1100px) {
		.conbox-b2c-main .box-story .box-item .picture {
			margin-top: -6.0556vw;
		}
		.conbox-b2c-main .box-story .box-item.slick-active .txt-box {
			min-height: 8.7639vw;
		}
               .conbox-b2c-main .box-story .box-head .tit a{
                        font-size: 4.5455vw;
                        line-height: 6.5455vw;
                }
	}
	@media (max-width: 800px) {
		.conbox-b2c-main .box-story .box-item .box { position: static; }
		.conbox-b2c-main .box-story .box-item .box .btn-more { -webkit-transition: none; transition: none; }
                .content .conbox-b2c-main .box-story .box-head .tit a{ font-size: 10.0000vw; line-height: 12.2222vw;}
	}
</style>
<div class="b2c-box box-story">
	<div class="box-head">
		
		
		<h2 class="tit">
			<a href="https://www.samsung.com/sec/explore/home/">스토리#</a>
		</h2>
					
		
		<p class="txt">당신의 삶을 특별하게 해줄 새로운 아이디어 <br>스마트하게 사는 새로운 방법을 알아보세요.</p>
	</div>
	<div class="box-slide" data-slick="0">
		
		<div class="box-item slick-active">
			<div class="picture">
				<span class="img">
					<img src="https://images.samsung.com/kdp/cms_contents/112277/5f34541e-a3aa-4408-94be-7ab6f4af63ab.jpg" alt="" class="web">
					<img src="https://images.samsung.com/kdp/cms_contents/112277/51ced4d1-f390-46e4-ab75-ad772239a89b.jpg" alt="" class="mo">
				</span>
			</div>
			<div class="txt-box">
				<span class="num">01</span>
				<strong class="tit">#함께 만드는 더 나은 미래</strong>
				<div class="box"><!-- 새로 추가 된 태그 -->
					<a href="https://www.samsung.com/sec/curated/our-planet-first/" class="btn-more" data-omni="exlplore:함께 만드는 더 나은 미래:learn more">더 알아보기</a>
				</div>
			</div>
		</div>
		
		<div class="box-item">
			<div class="picture">
				<span class="img">
					<img src="https://images.samsung.com/kdp/cms_contents/118663/b5da0f61-adb5-4bc0-b931-e25a02572878.jpg" alt="" class="web">
					<img src="https://images.samsung.com/kdp/cms_contents/118663/8253d497-0de5-43b0-8357-4496d09c93a4.jpg" alt="" class="mo">
				</span>
			</div>
			<div class="txt-box">
				<span class="num">02</span>
				<strong class="tit">#우리가 집에서 일하는 새로운 방법</strong>
				<div class="box">
					<a href="https://www.samsung.com/sec/curated/work-from-home/" class="btn-more" data-omni="exlplore:우리가 집에서 일하는 새로운 방법:learn more">더 알아보기</a>
				</div>
			</div>
		</div>
		
		<div class="box-item">
			<div class="picture">
				<span class="img">
					<img src="https://images.samsung.com/kdp/cms_contents/118663/4da5346f-84c3-4a68-b5fa-399466b50056.jpg" alt="" class="web">
					<img src="https://images.samsung.com/kdp/cms_contents/118663/62007f3a-c3d6-40aa-b035-17a49f01278f.jpg" alt="" class="mo">
				</span>
			</div>
			<div class="txt-box">
				<span class="num">03</span>
				<strong class="tit">#승리를 향한 완벽한 준비</strong>
				<div class="box"><!-- 새로 추가 된 태그 -->
					<a href="https://www.samsung.com/sec/curated/game-on/" class="btn-more" data-omni="exlplore:승리를 향한 완벽한 준비:learn more">더 알아보기</a>
				</div>
			</div>
		</div>
		
		
		
	</div>
</div>
<script>
	// 스토리 : 웹 접근성 포커스 전용 스크립트
	$(".conbox-b2c-main .box-story .box-item").on('mouseenter', function(){
		$(this).addClass('slick-active').siblings('.box-item').removeClass('slick-active');
	});
	$(".conbox-b2c-main .box-story .box-item .btn-more").on('focus', function(){
		$(this).parents('.box-item').addClass('slick-active').siblings('.box-item').removeClass('slick-active');
	});
	function windowWidthSlick(){
		$(".box-story .box-slide").slick({
			dots: true,
			arrows: false,
			fade: true,
			infinite: false,
			speed: 0,
			responsive: [
				{
					breakpoint: 801,
					settings: {
						fade: false,
						speed: 300,
					}
				}
			]
		});
		$(".box-story .txt-box").on("mouseenter", function(){
			var slideNo = $(this).parents(".box-item").index();
			$(".box-story .box-slide").slick("slickGoTo", slideNo);
		});
		$(".box-story .box-slide").on('afterChange', function(event, slick, currentSlide, nextSlide){
			$(".box-story .picture").removeClass("z-index-up");

			if($(this).parents(".popup-comp-player").length > 0) {
				var video = $(this).parents(".popup-comp-player").find("video");
				if(video.length > 0) video.get(0).pause();
			}
			$(".popup-comp-player").hide();
		});
	}
	$(window).resize(function(){
		var windowWidth = $(window).width(),
			slickNum = parseInt($(".box-story .box-slide").attr('data-slick'));
		if(windowWidth < 801){
			if($(".box-story .box-slide").attr('data-slick') == 0){
				windowWidthSlick();
			}
			$(".box-story .box-slide").attr('data-slick',slickNum + 1);
		} else {
			if(slickNum > 0){
				$(".box-story .box-slide").slick('unslick').attr('data-slick','0');
			}
		}
	});
</script>
<!-- END -->
<!-- e : story content --><!-- e : story content -->
		
		<!-- s : 트렌드 -->
		<div class="b2c-box common-pcd-box">
			<p class="content-sub-tit">WHAT'S HAPPENING @SAMSUNG.COM</p>
			<h2 class="content-tit">트렌드</h2>
			<div class="pcd-list">
				<div class="pcd-item" data-no="8883">
					<div class="visual">
					<a href="https://www.samsung.com/sec/bespoke/home/experience/" class="link"  data-omni="trend_BESPOKE Decorating the house"> 
							<span class="img"><img data-src="//images.samsung.com/kdp/display_banner/3453/01cfe1c6-6ad2-4336-b0f7-19fdadb85df8.jpg?$ORIGIN_JPG$" alt="BESPOKE 나답게 집꾸 온라인 체험존" class="img lozad" src="/sec/static/_images/common/pd_gallery_default_visual.png"  onload="setMasonryPcd();"></span>
						</a>
						</div>
					<div class="detail">
						<p class="type">EXPERIENCE</p>
						<p class="tit ">BESPOKE 나답게 집꾸 온라인 체험존</p>
						<p class="desc">내 취향에 맞는 BESPOKE로 공간을 나답게 꾸며 보세요!</p>
						</div>
				</div>
			<div class="pcd-item" data-no="8887">
					<div class="visual">
					<a href="https://www.samsung.com/sec/galaxy-s21/galaxystudio/challenge/" class="link"  data-omni="trend_Galaxy Book Connection Challenge"> 
							<span class="img"><img data-src="//images.samsung.com/kdp/display_banner/4785/9143041c-1723-458c-ac13-cc1853dd4036.png?$ORIGIN_JPG$" alt="갤럭시 북 연결 챌린지" class="img lozad" src="/sec/static/_images/common/pd_gallery_default_visual.png"  onload="setMasonryPcd();"></span>
						</a>
						</div>
					<div class="detail">
						<p class="type">EVENT</p>
						<p class="tit ">갤럭시 북 연결 챌린지</p>
						<p class="desc">갤럭시 모두를 하나로, 자유자재로! 갤럭시 북 연결 챌린지 이벤트를 확인해 보세요.</p>
						</div>
				</div>
			<div class="pcd-item" data-no="8886">
					<div class="visual">
					<a href="https://www.samsung.com/sec/store-model/lifestyletv2021/launching/?id=ecopackage" class="link" target="_blank" title="새창 열림" data-omni="trend_ecopackage"> 
							<span class="img"><img data-src="//images.samsung.com/kdp/display_banner/4734/77be449c-7e4b-402c-b1f6-d1098439e7c8.jpg?$ORIGIN_JPG$" alt=" 엔조이커플과 함께하는<br>#에코패키지챌린지" class="img lozad" src="/sec/static/_images/common/pd_gallery_default_visual.png"  onload="setMasonryPcd();"></span>
						</a>
						</div>
					<div class="detail">
						<p class="type"> CHALLENGE</p>
						<p class="tit new-window"> 엔조이커플과 함께하는<br>#에코패키지챌린지</p>
						<p class="desc">챌린지 도전 영상 확인하고, 지구를 지키는 작은 실천에 동참해주세요!</p>
						</div>
				</div>
			<div class="pcd-item" data-no="8871">
					<div class="visual">
					<a href="/sec/customer/reservationstore/ " class="link"  data-omni="trend_store reservation event"> 
							<span class="img"><img data-src="//images.samsung.com/kdp/display_banner/2072/54ef82f0-9267-4518-90d3-203a295fa1a7.jpg?$ORIGIN_JPG$" alt="매장 상담 예약" class="img lozad" src="/sec/static/_images/common/pd_gallery_default_visual.png"  onload="setMasonryPcd();"></span>
						</a>
						</div>
					<div class="detail">
						<p class="type">SUPPORT</p>
						<p class="tit ">매장 상담 예약</p>
						<p class="desc">맞춤 상담을 예약하고 삼성전자가 제안하는 라이프스타일을 직접 체험해보세요.</p>
						</div>
				</div>
			<div class="pcd-item" data-no="8885">
					<div class="visual">
					<a href="https://www.samsung.com/sec/galaxy/home/" class="link"  data-omni="trend_ALL ABOUT Galaxy"> 
							<span class="img"><img data-src="//images.samsung.com/kdp/display_banner/3626/38f0280b-fba5-4a05-9d58-218d613f3070.jpg?$ORIGIN_JPG$" alt="갤럭시의 모든 것" class="img lozad" src="/sec/static/_images/common/pd_gallery_default_visual.png"  onload="setMasonryPcd();"></span>
						</a>
						</div>
					<div class="detail">
						<p class="type">ALL ABOUT</p>
						<p class="tit ">갤럭시의 모든 것</p>
						<p class="desc">최첨단 기술의 폴더블 스마트폰부터 고성능 태블릿까지.
다양한 갤럭시를 만나보세요.</p>
						</div>
				</div>
			<div class="pcd-item" data-no="8870">
					<div class="visual">
					<a href="https://www.samsung.com/sec/videogallery/" class="link"  data-omni="trend_videogallery"> 
							<span class="img"><img data-src="//images.samsung.com/kdp/display_banner/3094/5acdf6a1-3023-4553-9055-f418bc65bc45.png?$ORIGIN_JPG$" alt="한눈에 보는 제품 영상" class="img lozad" src="/sec/static/_images/common/pd_gallery_default_visual.png"  onload="setMasonryPcd();"></span>
						</a>
						</div>
					<div class="detail">
						<p class="type">VIDEO</p>
						<p class="tit ">한눈에 보는 제품 영상</p>
						<p class="desc">어떤 영상을 찾으세요? 다양한 영상을 한눈에 보고 마음에 드는 제품을 골라보세요. </p>
						</div>
				</div>
			</div>
		</div> 
		<!-- e : 트렌드 -->
		</section>
		<!-- e : conbox 영역 -->
	</div>
	
	<!-- s : layer popup - layer type 슬라이드 밖에 삽입 -->
	<input type="hidden" id="videoBtn" data-popup-target="videoLayer" />
	<div class="layer-pop popup-comp-wrap popup-comp-player" id="videoLayer" tabindex="0" data-popup-layer="videoLayer" data-focus="videoLayer">
		<div class="popup-component-contents">
			<div class="component-head">
				<strong class="head-title blind">영상 보기</strong>
				<button type="button" class="pop-close" data-focus-next="videoLayer">닫기</button>
			</div>
			<div class="component-content">
				<div class="video ifrm">
					<iframe src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<!-- s : 영상 내용 삽입 필수 -->
				<article class="box-article blind">
					<div class="alt-tit">영상 타이틀</div>
					<div class="alt-content">영상 설명</div>
				</article>
				<!-- e : 영상 내용 삽입 필수 -->
			</div>
		</div>
	</div>
	<!-- e : layer popup -->
	
	<script>
	
	/* s : 20200903 string banner */
	if ($(".string-banner-wrap")) {
		var stringWrap = $(".string-banner-wrap"),
			stringItem = $(".string-banner-item"),
			stringSlide = stringWrap.find(".slide-box");
		if ( stringItem.length > 1 ) {
			stringWrap.addClass("is-slide");
			
			var stringBanner = stringSlide.slick({
				autoplay: true,
				touchMove: false,
				dots: false,
				arrows: false,
				useCSS: false,
				easing: 'easeInOutQuad',
				slidesToShow: 1,
				slidesToScroll: 1,
				autoplaySpeed: 4000,
				vertical: true,
				lazyLoad: 'ondemand',
			});
		
			/* stringBanner.on('setPosition', function(slick) {
				if (!$(".string-banner-wrap .item-inner .link").is(":visible")) {
					$(".string-banner-wrap .item-inner .link").show();
				}
			}); */
		}
		stringWrap.off("click.bannerClose");
		stringWrap.on("click.bannerClose",".btn-close", function (){
			stringWrap.slideUp();
		});
	}
	/* e : 20200903 string banner */
	</script><!-- 레이어 팝업 모음 -------------------------------------------------------------------------------------------------------------------------------------------------------------------->
<!-- s : 공통 팝업(alert)  -->
<div class="layer-pop layer-default alert" id="commonAlert" tabindex="0" data-popup-layer="commonAlert" data-focus="commonAlert">
    <div class="layer-header blind"><h2></h2></div>
    <div class="layer-content">
        <p style="word-break:keep-all;"></p>
        <div class="btn-box">
            <a href="javascript:void(0)" onclick="" class="btn btn-d btn-type2">확인</a>
        </div>
    </div>
</div>
<!-- e : 공통 팝업(alert)  -->
<!-- s : 공통 팝업(confirm)  -->
<div class="layer-pop layer-default" id="commonConfirm" tabindex="0" data-popup-layer="commonConfirm" data-focus="commonConfirm">
    <div class="layer-header blind">
        <h2></h2>
    </div>
    <div class="layer-content">
        <p></p>
        <div class="btn-box double">
            <!-- 버튼 두개시 클래스 double 추가 -->
            <a href="javascript:void(0)" class="btn btn-d btn-type1" id="commonConfirmCancelBtn" onclick="closeLayer('commonConfirm');">취소</a>
            <a href="javascript:void(0)" class="btn btn-d btn-type2" id="commonConfirmOkBtn">확인</a>
        </div>
    </div>
    <button type="button" class="pop-close" id="closeCommonConfirmBtn" name="closeCommonConfirmBtn" data-focus-next="commonConfirm">팝업닫기</button>
</div>
<!-- e : 공통 팝업(confirm)  --></div>
		<!-- e : 본문 영역 -->

		<!-- 플로팅 메뉴 -->
		<div id="floatingSticky" class="floating-sticky">
		<div class="menu-list">
			<div class="inner">
				<a href="#" class="btn-floating" onclick="floating_open();"><span>메뉴 보기</span></a>
				<ul>
				<!-- 모바일 앱에서 AR 기능 한시적 OFF  
						
				-->							
					<li class="menu01" aria-hidden=""><a href="javascript:chat_open();">빠르고 편리하게 도와드리는<br>삼성닷컴 챗봇입니다.</a></li>
					<li class="menu02" aria-hidden=""><a href="javascript:chat_open2();">무엇을 도와드릴까요?<br> 온라인 구매 상담사 입니다.</a></li>
					<li class="menu03" aria-hidden="true" style="display:none;"><a href="/sec/customer/reservationstore/?ref=floating/ " onclick="chat_open3();">매장 방문 예약하고<br> 맞춤 상담을 받아보세요.</a></li>
				</ul>
			</div>
		</div>
		<button type="button" class="btn-gotop">
			<span>위로</span>
		</button>
	</div>
	<script>
		floatSticky();
		
		function firstRecentGoods(){
			$.ajax({
				 url : "/sec/xhr/goods/getFirstRecentGoods"
				,type : "POST"
				,success : function(result) {
					var recentGoodsData = JSON.parse(result);
					
					if(recentGoodsData.recentYn === "Y"){
						$("floatingSticky").find(".menu04").remove();
						var html = "";
						html += '<li class="menu04">'
						html += '<a href="#" id = "btn-rcntgoods-floating" type="button" onclick="showLatestItem(self,\'latestItemLayer\'); getRecentGoods(); return false" data-st-path ="'+recentGoodsData.stContextPath+'"  data-popup-target="latestItemLayer" >'
						html += '<span> <img src="'+recentGoodsData.recentImgPath+'?$128_128_PNG$" alt="'+ recentGoodsData.recentGoodsNm +'"> 최근 본 제품 ('+recentGoodsData.recentGoodsLength+')</span>'
						html += '</a>'
						html += '</li>'
						
						$("#floatingSticky").find("ul").append(html);
					}
				}
			});
		}
		firstRecentGoods();
	</script>
	<!-- //플로팅 메뉴 -->
		<!-- s : 바닥글 영역 - b2c -->
		<script type="text/javascript">
	function showSafety() {
		$(".dropDown-content .subDesc").hide();
		$(".dropDown-content .dropButton").hide();
		
		$(".dropDown-content .dropcontent").show();
	}

	// 약관 변경
	$(document).on("click", "#dropClauseList01 .droplist-item", function(e) {
		var id = $(this).attr("id");
		
		if (id == "optServiceClause03") {
			location.href = "/sec/membership/terms/"; 
		}
    });
	
	function openPrivacy() {
		var agent = navigator.userAgent.toLowerCase();
		
		if ( ( (navigator.appName === 'Netscape' && agent.indexOf('trident') !== -1) || (agent.indexOf("msie") !== -1))){ // ie
			window.open("https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&certNum=2020-E-R031", "popup", "width=650, height=900, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
		} else {
			window.open("https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&certNum=2020-E-R031", "popup", "width=550,height=750");
		}	
	}
	
	//협력회사 사이버 신문고(새창)
	function openCyberVoc() {
		var agent = navigator.userAgent.toLowerCase();
		if ( ( (navigator.appName === 'Netscape' && agent.indexOf('trident') !== -1) || (agent.indexOf("msie") !== -1))){ // ie
			window.open("https://www.secbuy.com/irj/servlet/prt/portal/prtroot/com.sec.gsrm.com.cybervoc.BoardComponent?submissionId=introductionGuest&boardId=E0009&entrance=samsung.com", "popup", "width=830,height=600, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
		} else {
			window.open("https://www.secbuy.com/irj/servlet/prt/portal/prtroot/com.sec.gsrm.com.cybervoc.BoardComponent?submissionId=introductionGuest&boardId=E0009&entrance=samsung.com", "popup", "width=830,height=600");	
		}
	}
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "13bc3440ce4191";
if(window.wcs) {
wcs_do();
}
</script>

<footer id="footer" class="footer-b2c">
	<div class="footer-content">
		<nav class="footer-inner sitemap-links">
			<h2 class="blind">페이지 링크</h2>
			<ul>
				<li class="over">
					<h3>
						<a href="javascript:;">제품</a>
					</h3>
				<ul>
						<li><a href="https://www.samsung.com/sec/galaxy/home/" data-omni="product_smartphones">갤럭시</a></li>
						<li><a href="https://www.samsung.com/sec/smartphones/galaxy-s/" data-omni="product_smartphones">스마트폰</a></li>
						<li><a href="https://www.samsung.com/sec/tablets/galaxy-tabs/" data-omni="product_tablets">태블릿</a></li>
						<li><a href="https://www.samsung.com/sec/pc/galaxybook/" data-omni="product_tablets">갤럭시북</a></li>
						<li><a href="https://www.samsung.com/sec/watches/galaxy-watch-active/" data-omni="product_watches">워치</a></li>
						<li><a href="https://www.samsung.com/sec/buds/galaxy-buds-pro/" data-omni="product_buds">버즈</a></li>
						<li><a href="https://www.samsung.com/sec/tvs/neo-qled-8k/" data-omni="product_tvs">TV</a></li>
						<li><a href="https://www.samsung.com/sec/lifestyletv/home/" data-omni="product_lifestyletv">Lifestyle TV</a></li>
						<li><a href="https://www.samsung.com/sec/bespoke/home/" data-omni="product_bespoke">BESPOKE</a></li>
						<!-- 25164 :  footer 영역 수정 BEGIN -->
						<li><a href="https://www.samsung.com/sec/refrigerators/bespoke/" data-omni="product_refrigerators">냉장고</a></li>
						
						<!-- 25164 :  footer 영역 수정 END -->
					</ul>
					<ul>
						<li><a href="https://www.samsung.com/sec/kimchi-refrigerators/bespoke-kimchi-plus/" data-omni="product_kimchi-refrigerators">김치냉장고</a></li>
						<!-- 25164 :  footer 영역 수정 BEGIN -->
						<li><a href="https://www.samsung.com/sec/dishwashers/bespoke-dishwashers/" data-omni="product_dishwashers">식기세척기</a></li>
						<li><a href="https://www.samsung.com/sec/electric-range/bespoke-induction/" data-omni="product_smartphones">전기레인지</a></li>
						<li><a href="https://www.samsung.com/sec/washing-machines/grande-ai/" data-omni="product_washing-machines">세탁기</a></li>
						<li><a href="https://www.samsung.com/sec/dryers/grande-ai/" data-omni="product_dryers">건조기</a></li>
						<li><a href="https://www.samsung.com/sec/airdresser/bespoke-airdresser/" data-omni="product_smartphones">에어드레서</a></li>
						<li><a href="https://www.samsung.com/sec/air-conditioners/gallery/" data-omni="product_air-conditioners">에어컨</a></li>
						<li><a href="https://www.samsung.com/sec/air-cleaners/bespoke-cube/" data-omni="product_air-cleaners">공기청정기</a></li>
						<li><a href="https://www.samsung.com/sec/vacuum-cleaners/bespoke-jet/" data-omni="product_vacuum-cleaners">청소기</a></li>
						<li><a href="https://www.samsung.com/sec/printers/laser-multifunction/" data-omni="product_printers">프린터</a></li>
						 <!-- 25164 :  footer 영역 수정 END -->
					</ul>
				</li>
				<li>
					<h3>
						<a href="javascript:;">고객서비스</a>
					</h3>
					<ul>
						<li><a href="/sec/faq/" data-omni="faq_faq">삼성닷컴 FAQ</a></li>
						<li><a href="/sec/info/contactus/" data-omni="faq_contactus">이메일상담</a></li> 
						<li><a href="/sec/digitalplaza/storeMain/" data-omni="faq_shop locator">매장 찾기</a></li>
						<li><a href="/sec/digitalplaza/centerMain/" data-omni="faq_service-locator">서비스센터 찾기</a></li>
						<li><a href="/sec/digitalplaza/main/" data-omni="plaza_main">디지털프라자</a></li>
						<li><a href="/sec/md-inv/" data-omni="faq_md_innovation">MD 비즈니스 협력제안</a></li>
						<li><a href="https://www.secbuy.com/irj/portal/alluser?ume.logon.locale=ko&NavigationTarget=OBN%3A//BOTechnicalName%3DMainBannerOBN/BOSystemAlias%3DEPE_OBN/Operation%3Dnew_biz" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="faq_secbuy">비즈니스 협력제안</a></li>
						<li><a href="https://r1.community.samsung.com/t5/Korea/ct-p/kr" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="faq_community">삼성멤버스 커뮤니티</a></li>
						<li><a href="http://samsung.aiibook.net/b2c/" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="faq_e-catalog">E-카탈로그</a></li>
					</ul>
				</li>
<!-- s : 2021-05-31 추가 및 수정 -->
                    <li>
                        <h3><a href="javascript:;">지속가능경영</a></h3>
                        <ul>
                            <li><a href="/sec/sustainability/overview/" data-omni="sustainability_overview">개요</a></li>
                            <li><a href="/sec/sustainability/environment/" data-omni="sustainability_environment">환경</a></li>
                            <li><a href="/sec/sustainability/corporate-citizenship/" data-omni="sustainability_corporate-citizenship">사회공헌</a></li>
                            <li><a href="/sec/sustainability/digital-responsibility/" data-omni="sustainability_digital-responsibility">디지털 책임</a></li>
                            <li><a href="/sec/sustainability/labor-and-human-rights/" data-omni="sustainability_labor-and-human-rights">노동과 인권</a></li>
                            <li><a href="/sec/sustainability/diversity-and-inclusion/" data-omni="sustainability_diversity-and-inclusion">다양성과 포용</a></li>
                            <li><a href="/sec/sustainability/sustainable-supply-chain/" data-omni="sustainability_sustainable-supply-chain">지속가능한 공급망</a></li>
                            <li><a href="/sec/accessibility/overview/" data-omni="accessibility_overview">제품 접근성</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3><a href="javascript:;">회사소개</a></h3>
                        <ul>
                            <li><a href="/sec/about-us/company-info/" data-omni="about-us_company-info">기업정보</a></li>
                            <li><a href="/sec/about-us/business-area/" data-omni="about-us_business-area">사업정보</a></li>
                            <li><a href="/sec/about-us/brand-identity/" data-omni="about-us_brand-identity">브랜드 아이덴티티</a></li>
							<li><a href="/sec/about-us/careers/kr/" data-omni="aboutsamsung_careers">채용</a></li>
							<li><a href="/sec/ir/main/" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="about-us_ir-info">투자자 정보</a></li>
							<li><a href="https://news.samsung.com/kr/" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="about-us_newsroom">뉴스룸</a></li>
							<li><a href="/sec/about-us/ethics/" data-omni="about-us_ethics">윤리</a></li>
							<li><a href="https://design.samsung.com/kr/" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="about-us_design-samsung">디자인 삼성</a></li>
							<li><a href="https://dividend.samsung.com/" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="about-us_dividend">배당조회</a></li>
							<li><a href="/sec/notice/" data-omni="about-us_notice">공지사항</a></li>
                        </ul>
					</li>
					<!-- e : 2021-05-31 추가 및 수정 -->
					<li>
						<h3><a href="javascript:;">윤리&준법경영</a></h3>
						<ul>
							<li><a href="//sec-audit.com/common/businessPrinciple/viewBusinessPrincMain.do?_menuId=AVyA0fTVACzV4mS0&amp;_menuF=true&amp;s_gbn=PA100001" data-omni="ethics and law_principle" class="link-outlink" title="새창으로 열림">경영원칙</a></li>
					    	<li><a href="//sec-audit.com/common/wrongReport/init.do?_menuId=AVyAoCSlAADV4mQ3&amp;_menuF=true&amp;s_gbn=PA100002" data-omni="ethics and law_wrong report" class="link-outlink" title="새창으로 열림">부정제보</a></li>
					    	<li><a href="javascript:window.open('https://sec-compliance.net/gcc/gcc.do?method=gccReport&langCd=ko_KR' , 'CPMS' , 'width=1400px,height=1200px,resizable=yes,scrollbars=yes' );" data-omni="ethics and law_GCC" class="link-outlink" title="새창으로 열림">법위반제보</a></li>
						</ul>
					</li>
					<!-- s : 2021-05-31 추가 및 수정 -->
					<li>
						<h3><a href="javascript:;">부가정보</a></h3>
						<ul>
							<li><a href="https://www.dacorkorea.com/" class="link-outlink" title="새창으로 열림" target="_blank" data-omni="additional information_dacorkorea">데이코</a></li>
							<li><a href="javascript:openCyberVoc();" class="link-outlink" title="새창으로 열림" data-omni="">협력회사 사이버 신문고</a></li>
							<li><a href="javascript:;" onclick="newWindowAndSubmit({url : '/sec/additional/indexWasteCartridgeRecallApply/' , method : 'GET' , stContextPath : '/sec/'});" data-omni="additional information_printer_green">폐카트리지 회수신청</a></li>
						</ul>
					</li>
					<!-- e : 2021-05-31 추가 및 수정 -->
			</ul>
		</nav>
	</div>
	<div class="footer-content">
		<div class="footer-inner">
			<div class="info-detail">
				<p>
					<span>삼성전자 주식회사 대표이사 : 김기남</span>
					<span class="mo-inline">사업자등록번호 : 124-81-00998</span>
					<span class="comp-wrap"><a href="//www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2000374001130200515&pageUnit=10&searchCnd=wrkr_no&searchKrwd=1248100998&pageIndex=1" class="comp" title="새창 열림" target="_blank">사업자 정보확인</a></span>
					<span>통신판매업 신고 : 2000-경기수원-0515</span>
				</p>
				<p class="gap">
					<span>사업장주소 : 경기도 수원시 영통구 삼성로 129(매탄동)</span>
					<span>호스팅서비스사업자 : 한국아이비엠(주)</span>
					<span>대표번호 : 02-2255-0114</span>
					<span>제품/서비스/멤버십: 1588-3366</span>
					<span>구매문의 : 1588-6084</span>
				</p>
				<p>본 사이트에서 판매되는 상품 중에는 등록된 개별 판매자가 판매하는 상품이 포함되어 있습니다. </p>
				<p>개별 판매자 판매 상품의 경우 삼성전자(주)는 통신판매중개업자로서 통신판매의 당사자가 아니므로, 개별 판매자가 등록한 상품, 거래정보 및 거래 등에 대해 책임을 지지 않습니다.</p>
				<p>본 사이트의 컨텐츠는 저작권법의 보호를 받는 바  무단 전재, 복사, 배포 등을 금합니다.</p>
				<p class="copyright">Copyright &copy; 1995-2021 Samsung. All Rights Reserved.</p>
			</div>
		</div>
	</div>
	<div class="footer-content">
		<div class="footer-inner">
			<div class="cs-btn">
                <ul>
                	<li><a href="/sec/function/ipredirection/ipredirectionLocalList/">한국/한국어</a></li><!-- 200918 추가 -->
                    <li><a href="javascript:;" title="이메일 무단 수집거부" data-popup-target="popupGatherRefuse" data-omni="footer:bottom_email_security">이메일 무단 수집거부</a></li>
                    <li><a href="javascript:;" title="아이디어 정책" data-popup-target="popupIdeaPolicy" data-omni="footer:bottom_idea security">아이디어 정책</a></li>
                    <li><a href="/sec/info/sitemap/" data-omni="footer:bottom_sitemap">사이트맵</a></li>
                </ul>
            </div>
			<div class="clause-links">
				<!-- s : Accessible Dropdown -->
<!-- 				<span id="dropServiceClauseTitle" class="blind">서비스별 이용약관</span> -->
				<div id="dropClauseList01" class="wrap-droplist rounded clause-use">
					<button class="droplist-button" aria-haspopup="listbox" aria-labelledby="dropServiceClauseTitle dropServiceClauseBtn" id="dropServiceClauseBtn" title="서비스별 이용약관">이용약관<span class="blind">하위 메뉴 있음</span></button>
					<ul class="droplist" tabindex="-1" aria-labelledby="dropServiceClauseTitle" aria-activedescendant="optServiceClause01">
<!-- 						aria-activedescendant에 선택된 li의 id 삽입 -->
						<li id="optServiceClause02" class="droplist-item" data-omni="footer:terms_legal"><a href="https://account.samsung.com/membership/etc/specialTC.do?fileName=samsungkorea.html" target="_blank" title="새 창으로 열림">삼성전자 대표사이트 이용약관</a></li>
						<li id="optServiceClause03" class="droplist-item" data-omni="footer:terms_conditions"><a href="/sec/membership/terms/">삼성전자멤버십 이용약관</a></li>
						<li id="optServiceClause04" class="droplist-item" data-omni="footer:terms_contents"><a href="https://account.samsung.com/membership/policy/terms" target="_blank" title="새 창으로 열림">Samsung 서비스 이용약관</a></li>
					</ul>
				</div>
                <!-- s : Accessible Dropdown -->
                <div id="dropClauseList02" class="wrap-droplist rounded  clause-private">
                    <button class="droplist-button" title="서비스별 개인정보처리방침">개인정보처리방침<span class="blind">하위 메뉴 있음</span></button>
                    <ul class="droplist" tabindex="-1" aria-labelledby="dropServicePrivateTitle" aria-activedescendant="optServicePrivate01"><!--aria-activedescendant에 선택된 li의 id 삽입-->
                        <li id="optServicePrivate02" class="droplist-item"><a href="/sec/info/privacy/01">삼성닷컴 개인정보처리방침</a></li>
                        <li id="optServicePrivate03" class="droplist-item"><a href="/sec/info/privacy/02">삼성닷컴 이벤트 개인정보처리방침</a></li>
                        <li id="optServicePrivate04" class="droplist-item"><a href="/sec/info/privacy/03">삼성전자멤버십 개인정보처리방침</a></li>
                        <li id="optServicePrivate05" class="droplist-item"><a href="/sec/info/privacy/04">멤버십블루 개인정보처리방침</a></li>
                        <li id="optServicePrivate06" class="droplist-item"><a href="/sec/info/privacy/05">경력채용 개인정보처리방침</a></li>
                    </ul>
                </div>
                <!-- e : Accessible Dropdown -->
			</div>
			<div class="link-box">
				<div class="mark-box">
					<a href="javascript;" class="btn-mark btn-wa" data-popup-target="popupWA" data-omni="local logo_wa">웹접근성 우수사이트</a>
					<a href="javascript:openPrivacy();" 
						title="개인정보 보호 우수사이트 인증서 : 새창으로 열기" class="btn-mark btn-eprivacy" data-omni="local logo_eprivacy">개인정보보호 우수사이트</a>
				</div>
				<div class="sns-btn">
					<div class="wrap-sns">
						<span class="tit">SNS</span>
						<ul>
							<li><a href="//www.facebook.com/SamsungKorea" class="btn-fb" title="팝업 열기" target="_blank" data-omni="follow:facebook"><span class="blind">facebook</span></a></li>
							<li><a href="//www.youtube.com/c/samsungkorea" class="btn-yt" title="팝업 열기" target="_blank" data-omni="follow:youtube"><span class="blind">youtube</span></a></li>
							<li><a href="//www.instagram.com/samsungkorea" class="btn-ig" title="팝업 열기" target="_blank" data-omni="follow:instagram"><span class="blind">instagram</span></a></li>
							<li><a href="//blog.naver.com/samsung_korea" class="btn-bl" title="팝업 열기" target="_blank" data-omni="follow:blog"><span class="blind">삼성전자 코리아 블로그</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
	
<!-- s : 이메일 무단 수집거부 -->
<div class="layer-pop layer-normal" id="popupGatherRefuse" tabindex="0" data-popup-layer="popupGatherRefuse" data-focus="popupGatherRefuse">
	<div class="layer-header">
		<h2>이메일 무단 수집거부</h2>
	</div>
	<div class="layer-content">
		<div class="etc-divWrap">
			<p>본 웹사이트는 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단 수집되는 것을 거부합니다.<br> 
			이를 위반 시 『정보통신망 이용 촉진 및 정보보호 등에 관한 법률』등에 의해 처벌받을 수 있습니다.</p>
		</div>
	</div>
	<button type="button" class="pop-close" data-focus-next="popupGatherRefuse">팝업닫기</button>
</div>
<!-- e : 이메일 무단 수집거부 -->

<!-- s : 아이디어 정책 -->
<div class="layer-pop layer-normal" id="popupIdeaPolicy" tabindex="0" data-popup-layer="popupIdeaPolicy" data-focus="popupIdeaPolicy">
	<div class="layer-header">
		<h2>아이디어 제안에 대한 정책</h2>
	</div>
	<div class="layer-content">
		<div class="etc-divWrap">
			<p>삼성전자 및 삼성전자 임직원은 당사가 공식적으로 요청하지 않았음에도 불구하고 여러분께서 일방적으로 당사에 제출하는 아이디어나 제안 등을 수령하거나 검토하지 않습니다.</p>

			<p>이는 제출하신 내용이 당사 내부적으로 개발한 제품, 기술, 서비스와 유사할 경우 발생할 수 있는 오해와 분쟁을 방지하고 나아가 여러분의 창의적인 아이디어를 적극 보호하기 위함입니다.</p>

			<p>이러한 취지를 이해하여 주시고 구체화되지 않은 아이디어나 콘셉트(Concept) 단계의 제안이 당사에 제출되지 않도록 하여 주시기 바랍니다.</p>
		</div>
	</div>
	<button type="button" class="pop-close" data-focus-next="popupIdeaPolicy">팝업닫기</button>
</div>
<!-- e : 아이디어 정책 -->

<!-- s : 웹접근성 우수사이트 인증서  -->
<div class="layer-pop layer-default" id="popupWA" tabindex="0" data-popup-layer="popupWA" data-focus="popupWA">
	<div class="layer-content">
		<img src="/sec/static/_images/common/WA-2021.jpg" alt="웹접근성 우수사이트 인증서">
	</div>
	<button type="button" class="pop-close" data-focus-next="popupWA">팝업닫기</button>
</div>
<!-- e : 웹접근성 우수사이트 인증서  -->
<!-- e : 바닥글 영역 - b2c -->
	</div>

	</body>
</html>
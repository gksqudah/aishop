function openLayer(t,callback){var showTarget=$("[data-popup-layer="+t+"]");if($(".layer-pop").is(":visible"))LAYERZINDEX++;else LAYERZINDEX=300;showTarget.removeAttr("style").addClass("active").css("z-index",LAYERZINDEX).attr("aria-hidden",false).attr("data-zindex",LAYERZINDEX).focus();showTarget.find(".pop-close").data("activeTarget",t);if(device.isApp==true&&showTarget.hasClass("layer-normal"))showTarget.css("top",device.appHgt+"px");if(!showTarget.hasClass("nomask")){var zidx=parseInt($("#"+t).attr("data-zindex"))-
1;$("body").append("<div id='mask' data-mask-target='"+t+"' style='z-index:"+zidx+"'></div>");$("#mask").fadeIn().data("activeTarget",t);scrollLock("lock")}if(showTarget.is("#gatherview, #layerSlick, #popupProdCode")){$(".mediaslide, .modelslide, .filter-slick, .visualslide").slick("setPosition");$(".mediaslide-navi, .modelslide-navi, .visualslide-navi").slick("setPosition")}}
function closeLayer(t,callback){var activeTarget=$("[data-popup-layer="+t+"]");if(!activeTarget.hasClass("active"))return;activeTarget.removeAttr("style").removeClass("active").removeAttr("data-zindex").attr("aria-hidden",true);scrollLock("unlock");$("#mask[data-mask-target='"+t+"']").fadeOut("fast").remove();$("[data-popup-target="+t+"]").focus();LAYERZINDEX--;$("#commonAlert h2").text("");$("#commonAlert p").html("");$("#commonAlert a").text("확인");$("#commonAlert a").attr("onclick","closeLayer('commonAlert',"+
undefined+");");if(callback!=undefined)callback();$("#commonAlert a").data("focus-id","")}function commonAlert(data){$("#commonAlert h2").text(data.title);$("#commonAlert p").html(data.content);$("#commonAlert a").text(data.btnText);if(data.focusId)$("#commonAlert a").data("focus-id",data.focusId);if(data.callback==="")data.callback=undefined;$("#commonAlert a").attr("onclick","closeLayer('commonAlert',"+data.callback+");");$("#commonAlert a").attr("data-focus-next","commonAlert")}
function commonConfirm(data){$("#commonConfirm h2").text(data.title);$("#commonConfirm p").html(data.content);$("#commonConfirm #commonConfirmOkBtn").text(data.okBtnText);$("#commonConfirm #commonConfirmCancelBtn").text(data.cancelBtnText);if(data.dataPopupName)$("#commonConfirm").attr("data-popup-name",data.dataPopupName);else $("#commonConfirm").attr("data-popup-name","");$("#commonConfirm #commonConfirmOkBtn").attr("onclick","closeLayer('commonConfirm',"+data.callback+");");if(data.closeCallback!=
undefined){$("#commonConfirm #commonConfirmCancelBtn").attr("onclick","closeLayer('commonConfirm',"+data.closeCallback+");");$("#commonConfirm #closeCommonConfirmBtn").attr("onclick","closeLayer('commonConfirm',"+data.closeCallback+");")}}$(function(){});
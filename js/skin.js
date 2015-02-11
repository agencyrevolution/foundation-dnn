/*global $:false */

// Load Foundation
$(document).foundation();

// Document Ready
$(function() {

  "use strict";

  // $('.slider-main').slick({
  //   autoplay: true,
  //   autoplaySpeed: 5000,
  //   dots: true,
  //   fade: true,
  //   infinite: true,
  //   speed: 300,
  //   slide: "div",
  //   cssEase: "linear"
  // });

  // Sidebar
  $(".sectnav").find(".selected").parents("li").addClass("optOpen");
  $(".sectnav").find(".selected").addClass("optOpen");
  $(".sectnav").find(".optOpen").each(function () {
    $($(this).find("ul")[0]).slideDown(500);
    $(this).removeClass("optOpen");
    if ($(this).find("ul").length !== 0) {
      $(this).addClass("open");
    }
    $(this).addClass("on");
  });

  //add closed class to collapsed items
  $(".sectnav").find("li").each(function () {
    if (($(this).find("ul").length !== 0) && ($(this).hasClass("open") !== true)) { $(this).addClass("closed"); }
  });

  //show
  $(".sectnav").find("li > a").click(function (f) {
    var d = $(this).parent().children("ul");
    if (!($(this).parent().hasClass("open"))) {
      d.slideDown(200);
      } else {
        d.slideUp(200);
    }
    //if has child, can toggle open/close   
    if ($(this).parent().find("ul").length !== 0) {
      $(this).parent().toggleClass("open");
      $(this).parent().toggleClass("closed");
    }
    if ($(this).parent().hasClass("nolnk") || $(this).parent().hasClass("on")) {
      f.preventDefault();
    }
  });
  
});

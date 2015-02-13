/*global $:false;*/

document.addEventListener('DOMContentLoaded', function() {
  'use strict';
  $('.slider-main').slick({
    autoplay: true,
    autoplaySpeed: 5000,
    dots: true,
    fade: true,
    infinite: true,
    speed: 300,
    slide: 'div',
    cssEase: 'linear'
  });
});

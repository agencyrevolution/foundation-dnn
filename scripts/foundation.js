/*jshint camelcase:false*/
$(document).foundation({
  offcanvas : {
    open_method: 'overlap',
    close_on_click: true
  }
});

// Off-canvas swipe gesture
$(document).on('swipeleft swiperight', function(e) {
  'use strict';
    if (e.type === 'swipeleft') {
      $('.off-canvas-wrap').addClass('offcanvas-overlap');
    } else if (e.type === 'swiperight') {
      $('.off-canvas-wrap').removeClass('offcanvas-overlap');
    }
});

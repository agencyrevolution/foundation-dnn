/* jshint ignore: start */
$( document ).ready(function() {
  'use strict';

  // Includes
  var reset = require('./reset.js');
  var foundation = require('./foundation.js');
  var jfeed = require('./jfeed.js');
  // var svginjector = require('./vendor/svg-injector/dist/svg-injector.min.js');
  // var mySVGsToInject = document.querySelectorAll('img.inject-me');
  // var slider = require('./slider.js');

  // do something here
  $('.feature-h1', 'form[action="/"]').html('<h1>Its your life</h1>').append('<h2>lets protect it.</h2>');

  $('.off-canvas-list').prepend('<li class="off-canvas-close text-right"><a class="right-off-canvas-close" href="#">&#10006;</a></li>');

  // SVGInjector(mySVGsToInject);

  $.getFeed({
    url: 'http://kdelisle.startdio.com/blog/rssid/413',
    success: function(feed) {
      var html = '';

      for(var i = 0; i < feed.items.length && i < 5; i++) {
        var item = feed.items[i];
        html += '<li>' + '<a href="' + item.link + '">' + item.title + '</a>' + '</li>';
      }

      $('#result').append(html);
    }
  });

});


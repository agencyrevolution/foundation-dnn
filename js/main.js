$( document ).ready(function() {
  'use strict';

  // Includes
  var reset = require('./reset.js');
  var foundation = require('./foundation.js');
  // var slider = require('./slider.js');
  
  // Disable Dynamic Font Size on Quote Form Headline
  $('h1', '.designation').removeAttr('style').replaceWith(function() {
    return '<h2>' + $(this).text() + '</h2>';
  });

  // Quote Form Required Fields
  $('.quotrr .firstName label').html('First Name*');
  $('.quotrr .lastName label').html('Last Name*');
  $('.quotrr .email label').html('Email*');
  $('.quotrr .phone label').html('Phone*');

  // Quote Form Error Handling
  function validize() {
    $('.quotrr .validation').addClass('fillme').html('Please fill out required fields*<br>');
  } 
  
  if ($('.quotrr').length > 0) {
    $('.trigger input').bind('click', function () {  
      $('.quotrr .validation').html('');  
      if (!$('.quotrr .firstName .wq-input-field').val()) { 
        $('.quotrr .firstName .wq-input-field').parent().addClass('fillme');
        validize();
      }
      if (!$('.quotrr .lastName .wq-input-field').val()) { 
        $('.quotrr .lastName .wq-input-field').parent().addClass('fillme');
        validize();
      }
      if (!$('.quotrr .email .wq-input-field').val()) { 
        $('.quotrr .email .wq-input-field').parent().addClass('fillme');
        validize();
      }
      if (!$('.quotrr .phone .wq-input-field').val()) { 
        $('.quotrr .phone .wq-input-field').parent().addClass('fillme');
        validize();
      }
    });
  }

  //-- sidebar

  $('.sectnav').find('.selected').parents('li').addClass('optOpen');
  $('.sectnav').find('.selected').addClass('optOpen');
  $('.sectnav').find('.optOpen').each(function () {
      $($(this).find('ul')[0]).slideDown(500);
      $(this).removeClass('optOpen');
      if ($(this).find('ul').length !== 0) {
          $(this).addClass('open');
      }
      $(this).addClass('on');
  });

  //add closed class to collapsed items
  $('.sectnav').find('li').each(function () {

      if (($(this).find('ul').length !== 0) && ($(this).hasClass('open') !== true)) { $(this).addClass('closed'); }
  });

  //show
  $('.sectnav').find('li > a').click(function (f) {
      var d = $(this).parent().children('ul');
      if (!($(this).parent().hasClass('open'))) {
          d.slideDown(200);
      } else {
          d.slideUp(200);
      }

      //if has child, can toggle open/close   
      if ($(this).parent().find('ul').length !== 0) {
          $(this).parent().toggleClass('open');
          $(this).parent().toggleClass('closed');
      }

      if ($(this).parent().hasClass('nolnk') || $(this).parent().hasClass('on')) {
          f.preventDefault();
      }
  });

});



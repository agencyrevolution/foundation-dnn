$( document ).ready(function() {
  'use strict';

  // Includes
  var reset = require('./reset.js');
  var foundation = require('./foundation.js');
  var slider = require('./slider.js');

  // Disable Dynamic Font Size on Quote Form Headline
  $('h1', '.designation').removeAttr('style').replaceWith(function() {
    return '<h2>' + $(this).text() + '</h2>';
  });

  // Quote Form Required Fields
  $(".quotrr .firstName label").html( "First Name*" );
  $(".quotrr .lastName label").html( "Last Name*" );
  $(".quotrr .email label").html( "Email*" );
  $(".quotrr .phone label").html( "Phone*" );

  // Quote Form Error Handling
  function validize() {
    $(".quotrr .validation").addClass('fillme').html("Please fill out required fields*<br>");
  } 
  
  if ($(".quotrr").length > 0) {
    $(".trigger input").bind("click", function () {  
      $(".quotrr .validation").html("");  
      if (!$(".quotrr .firstName .wq-input-field").val()) { 
        $(".quotrr .firstName .wq-input-field").parent().addClass("fillme");
        validize();
      }
      if (!$(".quotrr .lastName .wq-input-field").val()) { 
        $(".quotrr .lastName .wq-input-field").parent().addClass("fillme");
        validize();
      }
      if (!$(".quotrr .email .wq-input-field").val()) { 
        $(".quotrr .email .wq-input-field").parent().addClass("fillme");
        validize();
      }
      if (!$(".quotrr .phone .wq-input-field").val()) { 
        $(".quotrr .phone .wq-input-field").parent().addClass("fillme");
        validize();
      }
    });
  }

});


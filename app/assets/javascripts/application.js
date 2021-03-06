// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require vendor/selectize
//= require bootstrap-datepicker
//= require_tree .

$(function() {
  // Scroll addClass for homepage
  if($('body').attr('data-controller') == 'pages' && $('body').attr('data-action') == 'index')
    $(window).scroll(function() {    
      var scroll = $(window).scrollTop();

      if (scroll >= 1) {
          $(".navbar").addClass("dark-border");
      } else {
          $(".navbar").removeClass("dark-border");
      }
    });
  else {
    $(".navbar").addClass("dark-border");
  }

  // Selectize
  $('select').selectize();

  // Bootstrap Datepicker
  $('.datepicker').datepicker({
    format: 'yyyy-mm-dd'
  });
});

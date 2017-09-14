$(document).on "turbolinks:load", ->
  $('.btn-usr').click ->
   $('.random').fadeIn();
   $(this).hide();

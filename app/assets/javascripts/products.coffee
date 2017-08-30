$(document).on "turbolinks:load", ->
  $('.btn-usr').click ->
   $('.random').fadeIn();
   $(this).hide();
  # $('.btn-session').click ->
  #   $('.insert').tidyTime() ->
  #       time: Time.now
  #       before:'It\'s'
  #       after:' and I\'m feeling good!'
  #       periodOfDay: true
  #       callback: tidyTimeFunction
  #   return
  # return

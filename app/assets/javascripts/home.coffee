$(window).scroll ->
  console.log $(this).scrollTop()
  if $(this).scrollTop() > 600
    $('.scrollToTop').fadeIn 1000
  else
    $('.scrollToTop').fadeOut 1000
  return
#Click event to scroll to top
$('.scrollToTop').click ->
  $('html, body').animate {scrollTop: 0}, 500
  false

# Carousel Auto-Cycle
$(document).ready ->
  $('.carousel').carousel interval: 6000
  return

((d, s, id) ->
  js = undefined
  fjs = d.getElementsByTagName(s)[0]
  if d.getElementById(id)
    return
  js = d.createElement(s)
  js.id = id
  js.src = '//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=443271375714375'
  fjs.parentNode.insertBefore js, fjs
  return
) document, 'script', 'facebook-jssdk'
jQuery(document).ready ($) ->
  $(window).bind 'load resize', ->
    setTimeout (->
      container_width = $('#container').width()
      $('#container').html '<div class="fb-page" ' + 'data-href="https://www.facebook.com/MAKE-UP-Justyna-Miazga-487435351397998/"' + ' data-width="' + container_width + '" data-tabs="timeline" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/MAKE-UP-Justyna-Miazga-487435351397998/"><a href="https://www.facebook.com/MAKE-UP-Justyna-Miazga-487435351397998/">MAKE UP Justyna Miazga</a></blockquote></div></div>'
      FB.XFBML.parse()
      return
    ), 100
    return
  return
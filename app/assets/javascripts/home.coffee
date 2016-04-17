$(window).scroll ->
  console.log $(this).scrollTop()
  if $(this).scrollTop() > 600
    $('.scrollToTop').fadeIn 1000
  else
    $('.scrollToTop').fadeOut 1000
  return
#Click event to scroll to top
$('.scrollToTop').click ->
  $('html, body').animate { scrollTop: 0 }, 500
  false
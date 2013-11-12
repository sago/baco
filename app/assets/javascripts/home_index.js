$(document).ready(function() {
  $('#my-roundabout').roundabout({
    btnNext: ".next",
    duration: 4000,
    reflect: true,
    autoplay: true,
    autoplayDuration: 2000
  });
  $('#slider-code').tinycarousel({ display: 2 });
});
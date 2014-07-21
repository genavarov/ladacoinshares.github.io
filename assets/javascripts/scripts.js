$("[data-scroll-to]").click(function (e) {
  var t = $(e.currentTarget);
  var el = $(t.data("scroll-to"));
  var pos = el.position().top;
  $("html, body").stop().animate({ scrollTop: pos }, 200);
  return false;
});


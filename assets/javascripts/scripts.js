$("[data-scroll-to]").click(function (e) {
  var t = $(e.currentTarget);
  var el = $(t.data("scroll-to"));
  var pos = el.position().top;
  $("html, body").stop().animate({ scrollTop: pos }, 200);
  return false;
});

$(".menu-headline").click(function (e) {
  $(e.currentTarget).closest(".stage").toggleClass("has-menu");
});

$(".showable-toggle").click(function (e) {
  $(e.currentTarget).closest(".row").toggleClass("open");
});

$(".xdp .headline").click(function (e) {
  $(e.currentTarget).closest(".container").toggleClass("open");
});

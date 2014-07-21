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

var div = $("<div>");
var timeout = new Date(2014, 6, 30);
div.countdown({ until: timeout, timezone: 0, format: "DHM", onTick: function (args) {
  $(".counter .days").text(args[3]);
  $(".counter .hours").text(args[4]);
  $(".counter .minutes").text(args[5]);
} });


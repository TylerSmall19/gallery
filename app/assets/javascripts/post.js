// Generated by CoffeeScript 1.12.3
var getImage, triggerImageChange;

$(function() {
  return $('html').on('keyup', triggerImageChange);
});

triggerImageChange = function(e) {
  if (e.keyCode === 37 && !e.altKey) {
    getImage(-1);
  }
  if (e.keyCode === 39) {
    return console.log('right');
  }
};

getImage = function(delta) {
  return $.get("/posts/" + ($('#photo').data().id + delta)).done(function(e) {
    return $('body').html(e);
  });
};

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$('html').on 'keyup', triggerImageChange

triggerImageChange = (e) ->
	if !e.altKey
		getImage -1 if e.keyCode == 37 
		getImage +1 if e.keyCode == 39

getImage = (delta) ->
	$.get "/posts/#{$('#photo').data().id + delta}"
	.done (e) ->
		$('body').html e

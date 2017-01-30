# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$('html').on 'keyup', triggerImageChange

triggerImageChange = (e) ->
	console.log('left') if e.keyCode == 37
	console.log('right') if e.keyCode == 39

getImage = (delta) ->
	$.get '/posts/'
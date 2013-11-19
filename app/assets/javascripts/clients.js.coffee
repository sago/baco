# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#clients_search input").keyup ->
    $.get $("#clients_search").attr("action"), $("#clients_search").serialize(), null, "script"
    false
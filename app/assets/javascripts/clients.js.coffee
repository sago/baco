# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#$(document).on "click", "#clients_button", ->
#  $.get $("#clients_table").attr("action"), $("#clients_table").serialize(), null, "script"
#  false
$ ->
  $("#clients_search input").keyup ->
    $.get $("#clients_search").attr("action"), $("#clients_search").serialize(), null, "script"
    false
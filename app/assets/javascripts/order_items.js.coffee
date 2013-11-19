# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).on "click", "#product_name", ->
  $(this).autocomplete source: "/order_items/search_products",
  minLength: 2,
    select: (event, ui) ->
      $('#product_id').val(ui.item.id)
# Type here!
#$(document).ready ->
#  index = 1
#  $('#product_name').autocomplete
#    source: "/order_items/search_products",
#    minLength: 2,
#    select: (event, ui) ->
#      $('#product_id').val(ui.item.id)
#      return

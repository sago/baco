# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

ps = $('#product_name').autocomplete
  source: "/order_items/search_products",
  minLength: 2,
  select: (event, ui) ->
    $('#product_id').val(ui.item.id)
    return

$(document).ready ->
  index = 1
  ps
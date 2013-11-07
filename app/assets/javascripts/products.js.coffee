# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#products').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true

$(document).ready ->
  index = 1
  $('#supplier_name').autocomplete
    source: "/products/search_suppliers",
    minLength: 2,
    select: (event, ui) ->
      $('#supplier_id').val(ui.item.id)
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $("#ticket_assignee").autocomplete
    source: $("#ticket_assignee").data("autocomplete-source")
    change: (event, ui) ->
      $("#ticket_assignee").val ui.item.label
      $("#ticket_assignee_id").val ui.item.value
      false
    focus: (event, ui) ->
      $("#ticket_assignee").val ui.item.label
      false
    select: (event, ui) ->
      $("#ticket_assignee").val ui.item.label
      false

  $("tr[data-link]").click ->
    window.location = $(this).data("link")

  $('tbody tr').hover (->
    $(this).css 'cursor', 'pointer'
    return
  ), ->
    $(this).css 'cursor', 'auto'
    return

  $('#comment_internal').change (e) ->
    if e.currentTarget.checked
      $('#comment_body').addClass 'alert alert-warning'
    else
      $('#comment_body').removeClass 'alert alert-warning'
    return

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  $(document).on 'click', 'form .remove_item', (event) ->
    $(this).prev('input[type=hidden]').val('0')
    $(this).closest('fieldset').slideToggle()
    event.preventDefault()
    
   

  $(document).on 'click', 'form .add_item', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('items').replace(regexp, time))
    event.preventDefault()

    
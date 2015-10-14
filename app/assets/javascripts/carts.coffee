$(window).load ->

# AJAX to add multiple items at a time with quantity form
  $('form#item_quantity').on 'click', 'input.button', (e) ->
    e.preventDefault()
    form = $('form#item_quantity')
    url = form.attr('action')
    method = form.attr('method')
    data = form.serialize()
    $.ajax url: '/cart/'+url, type: method, dataType: 'json', data: data, success: (new_count) ->
      $('span.cart-count').html(new_count)


  $('#mycart .remove').click (e) ->
    e.preventDefault()
    $this = $(this).closest('a')
    url = $this.data('targeturl')
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      $this.closest('.cart-item').slideUp()
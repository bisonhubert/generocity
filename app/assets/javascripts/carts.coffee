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

# AJAX to update item quantity within cart
  $('form#update_item_quantity').on 'click', 'input.button', (e) ->
    e.preventDefault()
    $this = $(this)
    form = $this.closest('form#update_item_quantity')
    url = form.attr('action')
    method = form.attr('method')
    data = form.serialize()
    $.ajax url: url, type: method, dataType: 'json', data: data, success: (new_counts) ->
      $('.cart-count').html(new_counts.new_count)
      $('span.total_price').html("$" + (Math.round(new_counts.new_total_price * 100)/100).toFixed(2))
      form.prev().closest('.item_price').html('$'+new_counts.new_item_price)

# AJAX to remove all of a particular item from the cart
  $('#mycart .remove').click (e) ->
    e.preventDefault()
    $this = $(this).closest('a')
    url = $this.data('targeturl')
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      $this.closest('.cart-item').slideUp()
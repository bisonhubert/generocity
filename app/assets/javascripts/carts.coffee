$(window).load ->

  $('form .item_quantity').on "submit", (e) ->
    e.preventDefault()
    console.log("worked")
    $this = $(this)
    url = $this.attr('action')
    method = $this.attr('method')
    data = $this.serialize
    $.ajax url: url, method: method, data: data, success: (new_count) ->
      console.log(data)
      $('.cart-count').html(new_count)


  $('#mycart .remove').click (e) ->
    e.preventDefault()
    $this = $(this).closest('a')
    url = $this.data('targeturl')
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      $this.closest('.cart-item').slideUp()
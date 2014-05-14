$ ->
  sum_weight = parseInt($('#weight').html()) || 0
  sum_calories = parseInt($('#calories').html()) || 0
  # $('#weight').html(sum_weight)
  # $('#calories').html(sum_calories)

  $('.product_box').on "click", (e) =>
    if ($(e.target).is(':checked')) == true
      sum_weight += $(e.target).data("weight")
      sum_calories += $(e.target).data("calories")
    else
      sum_weight -= $(e.target).data("weight")
      sum_calories -= $(e.target).data("calories")
    $('#weight').html(sum_weight)
    $('#calories').html(sum_calories)


  $("#filter").keyup ->
    rex = new RegExp($(this).val(), "i")
    $(".searchable tr").hide()
    $(".searchable tr").filter(->
      rex.test $(this).text()
    ).show()
    return

  $('').click ->
    # filter ->
    # if is checked

  $('all').click ->
    $(".searchable tr").show()
# calculate the default
weight = 0
calories = 0

$ ->
  $('#weight').html(weight)
  $('#calories').html(calories)

  $('.product_box').on "click", (e) =>


    # if checkbox == true
    #   sum (:product_weight) and sum(:product_calories)
    $(@).data("weight")
    # calories

    if $(@).is(':checked')
      # checked, add up to total
    else
      # not checked, decrease from total

    $('#weight').html(weight)
    $('#calories').html(calories)


# calculate the default
weight = 0
calories = 0

$ ->
  $('#weight').html(weight)
  $('#calories').html(calories)

  $('.product_box').on "click", (e) =>


    # if checkbox == true
    #   sum (:product_weight) and sum(:product_calories)
    $(@).data("weight")
    # calories

    if $(@).is(':checked')
      # checked, add up to total
    else
      # not checked, decrease from total

    $('#weight').html(weight)
    $('#calories').html(calories)
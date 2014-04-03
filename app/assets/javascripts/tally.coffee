# calculate the default (base weight 0 + products already checked?)
base_weight = 0 #total weight on opening page)
base_calories = 0 #total weight on opening page)

$ ->
  $('#weight').html(weight)
  $('#calories').html(calories)

  $('.product_box').on "click", (e) =>
    for tick in (':checked')
      if ($(@).is(':checked')) == true
        weight = base_weight + $(@).data("weight")
        calories = base_calories + $(@).data("calories")
      else
        $(@).is(':checked') == false
        weight = base_weight - $(@).data("weight")
        calories = base_calories - $(@).data("calories")
    $('#weight').html(weight)
    $('#calories').html(calories)






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

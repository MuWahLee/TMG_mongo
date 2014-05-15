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

  $('#show-ticked').on "click", (e) ->
    e.preventDefault()
    $('.product_box').each ->
      if !this.checked
        $(@).closest('tr').hide()


  $("#show-all").on "click", (e) ->
    e.preventDefault()
    $('tr').show()

    # filter ->
    # if is checked

  # $('all').click ->
  #   $(".searchable tr").show()




#     $('.product_box').on "click",(e) =>
#     $('#table tbody').find('tr:not(:has(:checkbox:checked))').hide();
# });

# $('#resetButt').click(function(){
#     $('#tableId1').find('tr').show();
#     $('#tableId1 input:checkbox').removeAttr('checked');
# });
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


  $(document).ready ->
    $ ->
      $("#myTable").tablesorter
        theme: "blue"
        sortList: [
          [
            1
            0
          ]
          [
            2
            0
          ]
          [
            3
            0
          ]
        ]
        headerTemplate: "{content}{icon}"
        widgets: ["columns"]
        widgetOptions:
          columns: [
            "primary"
            "secondary"
            "tertiary"
          ]

      return

    return

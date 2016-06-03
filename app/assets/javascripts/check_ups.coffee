# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  medicines = $('#check_up_medicine_ids').html()
  console.log(medicines)
  tr=$('#check_up_illness_ids').html()
  console.log(tr)

  illnessChange = ($this) ->
    $parentdiv = $this.closest('.cloneable')
    console.log($parentdiv)
    illness=$this.find(':selected').text()
    console.log(illness)
    options=$(medicines).filter("optgroup[label='#{illness}']").html()
    console.log(options)
    if options
      #$('#check_up_medicine_ids').html(options)
      bolezni=$parentdiv.find('.bolezni > select').html(options)
      $parentdiv.find('.bolezni > select').prepend( '<option value=""></option>' )
      #console.log("bolezni")
      #console.log(bolezni.html())

    else
      #$('#check_up_medicine_ids').empty()
      $parentdiv.find('.bolezni > select').empty()

  $('#kloni').on 'change','.check_up_illness_ids',  ->
    illnessChange($(this))

  $('form').on 'click', '.add_fields', (event) ->
    array=$(this).data('ids')
    y=$(this).data('fields')
    for i in array
      time=new Date().getTime()
      #console.log($(this).data('fields').closest("fieldset"))
      regexp=new RegExp(i, 'g')
      console.log(array)
      y=y.replace(regexp, time + "" + Math.floor(Math.random() * 100000000))
    $(this).before(y)
    event.preventDefault()


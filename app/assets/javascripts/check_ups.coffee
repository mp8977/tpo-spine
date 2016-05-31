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
    time=new Date().getTime()
    regexp=new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp,time))
    event.preventDefault()

  #$.each($('.check_up_diet_ids'), function( index, value ){
  #//alert( index + ": " + value );
  #dirtyHackLoad(value)
  #});#
  $('form').on 'click', '.add_fields_srce', (event) ->
    console.log($(this).data('id1'))
    console.log($(this).data('fields'))
    time=new Date().getTime()
    regexp=new RegExp($(this).data('id1'), 'g')
    time2=new Date().getTime()
    regexp2=new RegExp($(this).data('id2'))
    time3=new Date().getTime()
    regexp3=new RegExp($(this).data('id3'))
    $(this).before($(this).data('fields').replace(regexp,time).replace(regexp2,time2).replace(regexp3,time3))

    event.preventDefault()

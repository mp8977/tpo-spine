# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  medicines = $('#check_up_medicine_ids').html()
  console.log(medicines)
  tr=$('#check_up_illness_ids').html()
  console.log(tr)
  $('#check_up_illness_ids').change ->
    illness=$('#check_up_illness_ids :selected').text()
    options=$(medicines).filter("optgroup[label='#{illness}']").html()
    console.log(options)
    if options
      $('#check_up_medicine_ids').html(options)
    else
      $('#check_up_medicine_ids').empty()
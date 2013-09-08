class Payments
  constuctor: ->
    alert 'hello!'
    @bind_ui()
    @datepicker()

  bind_ui: ->
    alert 'o hai'
  datepicker: ->
    console.log 'hai thar'
    $('#payment_date').datepicker
      changeMonth: true
      changeYear: true
      dateFormat: "yy-mm-dd"

$ ->
  new Payments

#jQuery ->
#  $('#payment_date').datepicker
#    changeMonth: true
#    changeYear: true
#    dateFormat: "yy-mm-dd"
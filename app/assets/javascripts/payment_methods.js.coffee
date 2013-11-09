# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class PaymentMethods
    constructor: ->
        @bind_ui()

    bind_ui: ->
        $('div.input-group').on 'click', '#payment_date', (event) => @datepicker event

    datepicker: (event) ->
        $('#payment_date').datepicker()

$ -> # init
    new PaymentMethods
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class PaymentMethods
    constructor: ->
        @date_selector = '#payment_date'
        @bind_ui()

    bind_ui: ->
        $('div.input-group').on 'click', @date_selector, (event) => @datepicker event

    datepicker: (event) ->
        $(@date_selector).datepicker
            changeMonth: true
            changeYear: true
            dateFormat: "yy-mm-dd"

$ -> # init
    new PaymentMethods
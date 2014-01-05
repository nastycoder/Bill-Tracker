class Home
    constructor: ->
        @url = $('#container').data 'url'

    get_company_data: ->
        $.get "#{@url}.json"

    create_chart (data) ->

        $("#container").highcharts
            chart:
                type: "line"

            title:
                text: "Payments"

            xAxis:
                type: "datetime"
                dateTimeLabelFormats:
                    month: "%y-%b "

            yAxis:
                title:
                    text: "Bill amount"

            series: [
                for company in data
                    amount_data = []
                    for payment in company.payments
                        amount_data.push payment.amount
                    console.log amount_data

                    name: company.name
                    data: amount_data
            ]

$ ->


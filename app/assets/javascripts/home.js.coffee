class Home
    constructor: ->
        @url = $('#container').data 'url'

    get_ajax_and_create: ->
        $.get "#{@url}.json", (data) =>
            @create_chart(data)
        , 'json'

    create_chart: (data) ->
        chart_data = []
        for company in data

            money = []

            for payment in company.payments
                money.push {
                    amount: payment.amount
                    date: payment.date
                }

            chart_data.push {
                name: company.name
                data: money
            }

        console.log chart_data

        $("#container").highcharts
            chart:
                type: "line"
            title:
                text: "Payments"
            xAxis:
                type: "datetime"
                dateTimeLabelFormats:
                    month: "%y-%b"
            yAxis:
                title:
                    text: "Bill amount"

            series: chart_data

$ ->
    z = new Home
    z.get_ajax_and_create()
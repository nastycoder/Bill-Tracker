json.(@companies) do |company|
    json.name company.name
    json.payments company.payments do |payment|
        json.amount number_to_currency payment.amount
        json.date payment.date
    end
end


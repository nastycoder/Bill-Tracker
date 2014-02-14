json.(@companies) do |company|
    json.extract! company, :id, :name
    json.payments company.payments do |payment|
        json.extract! payment, :id, :amount, :date
    end
end


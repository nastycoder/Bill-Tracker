Fabricator :payment do
  company
  payment_method
  amount { Faker::Commerce.price }
  date { Faker::Business.credit_card_expiry_date }
end

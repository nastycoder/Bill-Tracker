class Company < ActiveRecord::Base
  has_many :payments
end

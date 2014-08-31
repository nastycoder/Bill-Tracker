class Company < ActiveRecord::Base
  has_many :payments
  belongs_to :user
end

class Payment < ActiveRecord::Base
  belongs_to :company
  belongs_to :payment_method
end

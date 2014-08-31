class AddUserToCompaniesAndPaymentMethods < ActiveRecord::Migration
  def change
    add_column :companies, :user_id, :integer
    add_column :payment_methods, :user_id, :integer
  end
end

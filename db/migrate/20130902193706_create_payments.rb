class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :company_id
      t.integer :payment_method_id
      t.decimal :amount, :precision => 10, :scale => 2
      t.date    :date

      t.timestamps
    end
  end
end

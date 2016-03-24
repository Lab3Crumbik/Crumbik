class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :amount
      t.string :identification
      t.string :card_number
      t.string :expiration_month
      t.string :expiration_year
      t.string :security_code

      t.timestamps null: false
    end
  end
end

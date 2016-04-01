class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :info
      t.float :price
      t.string :image
      t.string :status

      t.timestamps null: false
    end
  end
end

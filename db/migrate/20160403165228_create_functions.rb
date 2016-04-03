class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :name
      t.string :info
      t.string :url
      t.string :father_id
      t.references :rol, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

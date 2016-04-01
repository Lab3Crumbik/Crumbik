class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :content
      t.date :date
      t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

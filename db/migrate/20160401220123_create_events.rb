class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :info
      t.string :name
      t.date :date
      t.string :status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

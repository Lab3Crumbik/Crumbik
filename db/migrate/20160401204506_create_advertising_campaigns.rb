class CreateAdvertisingCampaigns < ActiveRecord::Migration
  def change
    create_table :advertising_campaigns do |t|
      t.string :name
      t.string :info
      t.date :date
      t.string :image
      t.attachment :avatar
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

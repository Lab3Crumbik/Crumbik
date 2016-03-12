class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :email
      t.text :slogan
      t.text :mission
      t.text :vision
      t.string :phone
      t.boolean :status

      t.timestamps null: false
    end
  end
end

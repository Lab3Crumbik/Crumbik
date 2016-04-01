class CreateMenusRols < ActiveRecord::Migration
  def change
    create_table :menus_rols do |t|
      t.references :menu_option, index: true, foreign_key: true
      t.references :rol, index: true, foreign_key: true
    end
  end
end

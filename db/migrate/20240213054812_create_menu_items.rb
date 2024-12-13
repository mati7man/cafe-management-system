class CreateMenuItems < ActiveRecord::Migration[7.2]
  def change
    create_table :menu_items do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2, null: false
      t.references :category, null: false, foreign_key: true
      t.boolean :available, default: true
      t.string :image_url
      t.integer :preparation_time

      t.timestamps
    end
    
    add_index :menu_items, :name
    add_index :menu_items, :available
  end
end

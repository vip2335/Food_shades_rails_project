class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :res_name
      t.string :res_menu
      t.string :res_address
      t.integer :phone

      t.timestamps
    end
  end
end

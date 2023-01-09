class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_email
      t.integer :user_phone
      t.string :user_address

      t.timestamps
    end
  end
end

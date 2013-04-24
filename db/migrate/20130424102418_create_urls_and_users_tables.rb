class CreateUrlsAndUsersTables < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long
      t.string :short
      t.integer :click_count, default: 0
      t.references :user
      t.timestamps
    end
    
    create_table :users do |u|
      u.string :first_name
      u.string :last_name
      u.string :email
      u.string :password
      u.timestamps
    end
  end
end

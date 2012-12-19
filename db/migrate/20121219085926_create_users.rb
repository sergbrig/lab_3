class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.text :contact_info
      t.string :state

      t.timestamps
    end
  end
end

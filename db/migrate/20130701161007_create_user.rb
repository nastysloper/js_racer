class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false, :unique => true
      t.string :initials, :null => false
      t.string :password_hash, :null => false

      t.timestamps
    end
  end
end

class CreateMatch < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :game_id, :null => false
      t.integer :user_id, :null => false
    end
  end
end

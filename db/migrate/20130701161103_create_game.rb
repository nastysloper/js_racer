class CreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.time :total_time
      t.datetime :finished_at
      t.string :winner

      t.timestamps
    end
  end
end

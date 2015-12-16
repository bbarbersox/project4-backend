class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :title
      t.string :description
      t.string :avatar
      t.integer :capacity
      t.integer :open_seats

      t.timestamps null: false
    end
  end
end

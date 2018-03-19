class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
    	t.string :ship_name, null: false
    	t.integer :seat_cap, null: false
    	t.integer :car_cap, null: false
    	t.integer :room_cap, null: false
    	t.integer :car_charge, null: false
    	t.integer :room_charge, null: false
    	t.integer :meal_charge, null: false
    	t.integer :fare, null: false
      	t.timestamps null: false
    end
  end
end

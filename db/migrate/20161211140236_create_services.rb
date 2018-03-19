class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
    	t.references :ship, null: false
    	t.references :route, null: false
    	t.datetime :start_date, null: false
    	t.integer :passenger_num, null: false
      t.integer :car_num, null: false
    	t.integer :taken_room, null: false
	t.timestamps null: false
    end
  end
end

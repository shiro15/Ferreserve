class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.references :service, null: false
    	t.references :user_id, null: false
    	t.integer :people_num, null: false
    	t.integer :kids_num, default: 0
    	t.boolean :meal, default: false
        t.integer :car, default: 0
        t.integer :room, default: 0
        t.integer :total, null: false
    	t.timestamps null: false
    end
  end
end

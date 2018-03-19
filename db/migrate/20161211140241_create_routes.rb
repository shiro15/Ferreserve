class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
    	t.string :start_place, null: false
    	t.string :goal_place, null: false
    	t.time :time, null: false
	t.timestamps null: false
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name, null: false
    	t.string :address, null: false
    	t.string :mail, null: false
    	t.string :pass, null: false
    	t.boolean :administrator, default: false
      t.timestamps null: false
    end
  end
end

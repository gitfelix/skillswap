class Offer < ActiveRecord::Migration
  def change
  	create_table :offers do |t|
  		t.integer :user_id
  		t.integer :skill_id

  		t.timestamps

  	end
  end
end

class UserSkills < ActiveRecord::Migration
  def change
  	create_table :UserSkills do |t| 
  		t.belongs_to :user 
  		t.belongs_to :skill
  		t.integer :proficiency

  		t.timestamps
  	end 
  end
end

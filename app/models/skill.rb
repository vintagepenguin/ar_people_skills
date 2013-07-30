class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :users, :through => :skills

  validate :skill, 

end

class User < ActiveRecord::Base
  has_many :user_skills
  has_many :skills, :through => :user_skills

  validate :name, uniqueness: true

  def proficiency_for(skill)
    self.user_skills.find_by_skill_id(skill.id).proficiency
  end

  def set_proficiency_for(skill, proficiency)
  	 user_skill =  self.user_skills.find_by_skill_id(skill.id)
  	 user_skill.proficiency = proficiency
  	 user_skill.save
  end 

end


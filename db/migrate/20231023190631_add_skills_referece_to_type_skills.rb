class AddSkillsRefereceToTypeSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :type_skills, :skills, null: false, foreign_key: true
  end
end

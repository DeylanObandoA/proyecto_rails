class AddUsersRefereceToUserSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_skills, :users, null: false, foreign_key: true
  end
end

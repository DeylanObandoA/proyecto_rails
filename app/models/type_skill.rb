# class TypeSkill < ApplicationRecord
#     belongs_to :skills
#     has_many :user_skills
#     has_many :users, through: :user_skills
# end
class TypeSkill < ApplicationRecord

    has_many :skills, foreign_key: 'type_skills_id',dependent: :destroy 

    def name
        type_skill
    end

end

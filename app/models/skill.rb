class Skill < ApplicationRecord

    has_many :type_skill, foreign_key: 'type_skills_id'

end
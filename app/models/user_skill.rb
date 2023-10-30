class UserSkill < ApplicationRecord
    belongs_to :user
    belongs_to :type_skill
end
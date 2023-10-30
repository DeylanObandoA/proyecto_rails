# class Technology < ApplicationRecord

#     has_many :type_technologies

# end
class Technology < ApplicationRecord

    belongs_to :type_techonoly
    has_many :project_technologies
    has_many :projects, through: :project_technologies

end
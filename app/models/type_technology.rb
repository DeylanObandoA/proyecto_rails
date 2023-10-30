class TypeTechnology < ApplicationRecord
    belongs_to :technologies
    has_many :type_technologies
    has_many :project_technologies
    has_many :project, through: :project_technologies

end
class ProjectTechnology < ApplicationRecord

    belongs_to :project
    belongs_to :type_technologies

end
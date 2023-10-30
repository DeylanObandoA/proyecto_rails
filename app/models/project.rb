class Project < ApplicationRecord
    has_many :users 
    has_many :project_technologies
    has_many :type_technologies, through: :project_technologies

end
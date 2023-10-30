class UserType < ApplicationRecord

    belongs_to :user
    belongs_to :user_user_types
    has_many :users, through: :user_types

end
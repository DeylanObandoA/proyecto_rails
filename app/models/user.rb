class User < ApplicationRecord
  belongs_to :social_link , optional: true
  belongs_to :project , optional: true
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :user_user_types
  has_many :user_type, through: :user_user_types

  enum role: [:regular , :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable 
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
end
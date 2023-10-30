module Visible
  extend ActiveSupport::Concern

  VALID_TYPE_SKILLS = [['Soft skills', 1], ['Technical', 2]]

  included do
      validates :type_skill, inclusion: { in: VALID_TYPE_SKILLS}
  end

  def type_skill_options
      VALID_TYPE_SKILLS
  end

end
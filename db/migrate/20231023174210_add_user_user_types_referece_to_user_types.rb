class AddUserUserTypesRefereceToUserTypes < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_types, :user_user_types, null: false, foreign_key: true
  end
end

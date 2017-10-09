class AddUserToUserTutorial < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_tutorials, :user, foreign_key: true
  end
end

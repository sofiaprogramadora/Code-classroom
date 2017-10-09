class AddCreatorToUserTutorial < ActiveRecord::Migration[5.1]
  def change
    add_column :user_tutorials, :creator, :string
  end
end

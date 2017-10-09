class RemoveCreatorFromUserTutorial < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_tutorials, :creator, :string
  end
end

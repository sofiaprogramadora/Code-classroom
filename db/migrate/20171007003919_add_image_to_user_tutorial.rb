class AddImageToUserTutorial < ActiveRecord::Migration[5.1]
  def change
    add_column :user_tutorials, :image, :string
  end
end

class RemoveImagesFromUserTutorial < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_tutorials, :images, :string
  end
end

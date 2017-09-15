class AddLanguageToUserTutorial < ActiveRecord::Migration[5.1]
  def change
    add_column :user_tutorials, :language, :string
  end
end

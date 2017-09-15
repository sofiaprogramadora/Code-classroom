class CreateUserTutorials < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tutorials do |t|
      t.string :name
      t.text :goal
      t.text :content
      t.text :code
      t.string :files
      t.string :images
      t.string :embed

      t.timestamps
    end
  end
end

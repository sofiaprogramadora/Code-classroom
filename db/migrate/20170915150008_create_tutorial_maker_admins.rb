class CreateTutorialMakerAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :tutorial_maker_admins do |t|
      t.string :name
      t.text :content
      t.text :code

      t.timestamps
    end
  end
end

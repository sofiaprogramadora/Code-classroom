class RemoveTutAdmin < ActiveRecord::Migration[5.1]
  def change
      drop_table :tutorial_maker_admins
  end
end

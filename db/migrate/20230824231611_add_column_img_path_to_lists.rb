class AddColumnImgPathToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :img_path, :string
  end
end

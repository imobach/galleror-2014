class AddFieldsToAlbums < ActiveRecord::Migration
  def up
    add_column :albums, :public, :boolean
    change_column :albums, :title, :string, limit: 50
  end

  def down
    remove_column :albums, :public
    change_column :albums, :title, :string, limit: nil
  end
end

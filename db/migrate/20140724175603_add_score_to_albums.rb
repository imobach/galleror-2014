class AddScoreToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :score, :integer
  end
end

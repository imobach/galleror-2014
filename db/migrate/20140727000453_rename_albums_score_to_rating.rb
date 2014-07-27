class RenameAlbumsScoreToRating < ActiveRecord::Migration
  def change
    rename_column :albums, :score, :rating
  end
end

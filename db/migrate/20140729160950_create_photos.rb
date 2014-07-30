class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :file
      t.references :album, index: true
      t.timestamps
    end
  end
end

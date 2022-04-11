class CreateMusicAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :music_albums do |t|
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end

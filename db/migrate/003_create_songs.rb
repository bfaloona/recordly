class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :name
      t.belongs_to :artist, index: true
      t.belongs_to :album, index: true
      t.integer :track
      t.integer :length
      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end

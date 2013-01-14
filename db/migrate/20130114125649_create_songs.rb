class CreateSongs < ActiveRecord::Migration
  def up
      create_table :songs do |s|
          s.string :name 
          s.text :description
      end
  end

  def down
      drop_table :songs
  end
end

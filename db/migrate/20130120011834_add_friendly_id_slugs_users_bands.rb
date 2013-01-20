class AddFriendlyIdSlugsUsersBands < ActiveRecord::Migration
  def up
      add_index :users, :slug, :unique => true
      add_index :bands, :slug, :unique => true
  end

  def down
  end
end

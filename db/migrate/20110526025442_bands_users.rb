class BandsUsers < ActiveRecord::Migration
  def self.up
	  # have to call it band_user because the (de-)pluralisation didn't work
	  create_table :band_users, :id => false do |t|
		  t.integer :band_id
		  t.integer :user_id
	  end

	  add_index(:band_users, [:band_id, :user_id], :unique => true)
  end

  def self.down
	  drop_table :bands_users
  end                     
end

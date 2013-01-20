class CreateBandsUsersJoinTable < ActiveRecord::Migration
  def up
      create_table :bands_users, :id => false do |t|
          t.integer :band_id
          t.integer :user_id
      end
  end

  def down
      drop_table :bands_users
  end
end

class CreateUsers < ActiveRecord::Migration
  def self.up
	  create_table :users do |t|
		  t.string :name
		  t.text :description
		  t.string :email, :unique => true
		  t.boolean :admin, :default => false
		  t.string :salt
		  t.string :encrypted_password
		  
		  t.timestamps
	  end
  end

  def self.down
	  drop_table :users
  end
end

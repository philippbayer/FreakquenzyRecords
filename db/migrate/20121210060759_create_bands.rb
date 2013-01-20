class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :slug
      t.string :description

      t.timestamps
    end
    add_index :bands, :name
  end
end

class CreateNewsitems < ActiveRecord::Migration
  def up
      create_table(:newsitems) do |t|
          t.string :header
          t.text :body

          t.timestamps
      end
  end

  def down
      drop_table(:newsitems)
  end
end

class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.references :series
      t.integer :issue
      t.integer :page_count
      t.string :name

      t.timestamps
    end
    add_index :comics, :series_id
  end
end

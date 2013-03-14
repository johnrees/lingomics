class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :comic
      t.references :user
      t.integer :page

      t.timestamps
    end
    add_index :bookmarks, :comic_id
    add_index :bookmarks, :user_id
  end
end

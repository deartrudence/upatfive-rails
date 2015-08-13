class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.string :excerpt
      t.text :words

      t.timestamps null: false
    end
  end
end

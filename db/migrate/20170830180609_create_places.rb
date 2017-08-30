class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :classification
      t.string :ebook
      t.string :largeprint
      t.timestamps
    end
  end
end

class AddSubTitleToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :sub_title, :string
    remove_column :books, :author, :string
  end
end

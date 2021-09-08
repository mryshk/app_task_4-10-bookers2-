class AddColumnToBooks < ActiveRecord::Migration[5.2]
  def change
     add_column :books, :rate, :float
     add_column :books, :category, :string
  end
end

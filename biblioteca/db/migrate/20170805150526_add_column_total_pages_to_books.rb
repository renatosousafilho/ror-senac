class AddColumnTotalPagesToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :total_pages, :integer
  end
end

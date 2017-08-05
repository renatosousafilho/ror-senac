class AddColumnCoverToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :cover, :string
  end
end

class AddColumnResumeToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :resume, :text
  end
end

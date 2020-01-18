class DeleteCategory < ActiveRecord::Migration[5.1]
  def change
    drop_table :category
  end
end

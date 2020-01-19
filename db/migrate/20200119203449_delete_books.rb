class DeleteBooks < ActiveRecord::Migration[5.1]
  def change
    drop_table :books
  end
end


def change
  drop_table :category
end

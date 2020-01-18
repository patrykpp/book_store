class CreateCategroys < ActiveRecord::Migration[5.1]
  def change
    create_table :categroys do |t|
      t.string :name

      t.timestamps
    end
  end
end

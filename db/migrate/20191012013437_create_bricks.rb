class CreateBricks < ActiveRecord::Migration[5.2]
  def change
    create_table :bricks do |t|
      t.string :name
      t.string :table_type
      t.string :name_plural
      t.string :parent_dir
      t.string :api_path

      t.timestamps
    end
  end
end

class CreateDfields < ActiveRecord::Migration[5.2]
  def change
    create_table :dfields do |t|
      t.string :field_name
      t.string :field_type
      t.boolean :is_required
      t.boolean :is_show_in_list
      t.boolean :is_editable
      t.string :api
      t.references :brick, foreign_key: true

      t.timestamps
    end
  end
end

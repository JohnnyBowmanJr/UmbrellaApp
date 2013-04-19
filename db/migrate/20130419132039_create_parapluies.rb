class CreateParapluies < ActiveRecord::Migration
  def change
    create_table :parapluies do |t|
      t.string :colour
      t.boolean :foldable
      t.string :handle_type

      t.timestamps
    end
  end
end

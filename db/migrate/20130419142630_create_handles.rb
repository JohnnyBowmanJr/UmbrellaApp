class CreateHandles < ActiveRecord::Migration
  def change
    create_table :handles do |t|
      t.string :material
      t.integer :parapluie_id

      t.timestamps
    end
  end
end

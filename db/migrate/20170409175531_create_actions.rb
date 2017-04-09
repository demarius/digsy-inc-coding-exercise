class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :name
      t.string :icon
      t.boolean :completed

      t.timestamps null: false
    end
  end
end

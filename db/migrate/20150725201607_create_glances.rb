class CreateGlances < ActiveRecord::Migration
  def change
    create_table :glances do |t|
      t.text :point

      t.timestamps null: false
    end
  end
end

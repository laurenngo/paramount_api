class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :department
      t.string :category
      t.text :summary
      t.text :focus
      t.integer :banner_id
      t.integer :thumbnail_id

      t.timestamps null: false
    end
  end
end

class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.text :footnote
      t.text :body

      t.timestamps null: false
    end
  end
end

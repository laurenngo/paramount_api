class CreateSubpoints < ActiveRecord::Migration
  def change
    create_table :subpoints do |t|
      t.string :type
      t.text :body

      t.timestamps null: false
    end
  end
end

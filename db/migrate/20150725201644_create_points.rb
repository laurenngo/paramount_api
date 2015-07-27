class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :type
      t.text :body

      t.timestamps null: false
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.text :details
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end

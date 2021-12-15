class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :detail
      t.decimal :price
      t.boolean :inside
      t.boolean :outside
      t.boolean :smart
      t.boolean :clothes
      t.boolean :functional

      t.timestamps
    end
  end
end

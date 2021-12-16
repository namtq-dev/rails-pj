class CreateProductReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :product_reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.text :review

      t.timestamps
    end
  end
end

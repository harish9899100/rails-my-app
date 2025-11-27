class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :rating
      t.integer :state
      t.references :customers
      t.references :books
      t.timestamps
    end
  end
end

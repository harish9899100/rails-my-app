class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.string :isbn
      t.decimal :price
      t.boolean :out_of_print
      t.integer :views
      t.references :suppliers
      t.references :authors
      t.timestamps
    end
  end
end

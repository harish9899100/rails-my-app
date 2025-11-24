class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.integer :visit
      t.references :orders
      t.references :reviews
      t.timestamps
    end
  end
end

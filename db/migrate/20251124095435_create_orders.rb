class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.time :date_submitted
      t.integer :status
      t.decimal :subtotal
      t.decimal :shipping
      t.decimal :tax
      t.decimal :total
      t.references :customers
      t.timestamps
    end
  end
end

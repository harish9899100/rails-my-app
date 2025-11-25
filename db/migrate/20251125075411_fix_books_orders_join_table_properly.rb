class FixBooksOrdersJoinTableProperly < ActiveRecord::Migration[8.0]
  def change
    if table_exists?(:book_orders)
      rename_table :book_orders, :books_orders
    end

    if column_exists?(:books_orders, :orders_id)
      rename_column :books_orders, :orders_id, :order_id
    end

    if column_exists?(:books_orders, :books_id)
      rename_column :books_orders, :books_id, :book_id
    end
  end
end

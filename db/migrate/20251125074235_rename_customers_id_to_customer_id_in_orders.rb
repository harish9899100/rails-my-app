class RenameCustomersIdToCustomerIdInOrders < ActiveRecord::Migration[8.0]
  def change
    # Only rename if the old column exists (prevents crashes)
    if column_exists?(:orders, :customers_id)
      rename_column :orders, :customers_id, :customer_id
    end
  end
end

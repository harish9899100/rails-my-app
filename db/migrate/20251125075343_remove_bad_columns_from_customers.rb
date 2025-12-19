class RemoveBadColumnsFromCustomers < ActiveRecord::Migration[8.0]
  def change
    if column_exists?(:customers, :orders_id)
      remove_column :customers, :orders_id
    end

    if column_exists?(:customers, :reviews_id)
      remove_column :customers, :reviews_id
    end
  end
end

class FixReviewsForeignKeysProperly < ActiveRecord::Migration[8.0]
  def change
    if column_exists?(:reviews, :customers_id)
      rename_column :reviews, :customers_id, :customer_id
    end

    if column_exists?(:reviews, :books_id)
      rename_column :reviews, :books_id, :book_id
    end
  end
end

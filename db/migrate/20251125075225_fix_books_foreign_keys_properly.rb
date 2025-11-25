class FixBooksForeignKeysProperly < ActiveRecord::Migration[8.0]
  def change
    if column_exists?(:books, :authors_id)
      rename_column :books, :authors_id, :author_id
    end

    if column_exists?(:books, :suppliers_id)
      rename_column :books, :suppliers_id, :supplier_id
    end
  end
end

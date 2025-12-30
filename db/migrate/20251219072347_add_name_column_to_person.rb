class AddNameColumnToPerson < ActiveRecord::Migration[8.0]
  def change
    add_column :people, :name, :string
  end
end

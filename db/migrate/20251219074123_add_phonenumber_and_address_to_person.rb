class AddPhonenumberAndAddressToPerson < ActiveRecord::Migration[8.0]
  def change
    add_column :people, :phone_number, :integer
    add_column :people, :address, :string
  end
end

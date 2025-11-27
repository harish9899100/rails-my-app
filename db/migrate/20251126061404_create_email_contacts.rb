class CreateEmailContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :email_contacts do |t|
      t.timestamps
    end
  end
end

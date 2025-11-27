class CreatePersonTests < ActiveRecord::Migration[8.0]
  def change
    create_table :person_tests do |t|
      t.timestamps
    end
  end
end

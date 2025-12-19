class CreatePractices < ActiveRecord::Migration[8.0]
  def change
    create_table :practices do |t|
      t.timestamps
    end
  end
end

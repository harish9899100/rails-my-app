class AddNameColumnToPractice < ActiveRecord::Migration[8.0]
  def change
    change_table :practices do |t|
      t.string :name
    end
  end
end

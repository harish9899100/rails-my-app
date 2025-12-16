class CreateAds < ActiveRecord::Migration[8.0]
  def change
    create_table :ads do |t|
      t.string :name
      t.references :magazine, null: false, foreign_key: true
      t.timestamps
    end
  end
end

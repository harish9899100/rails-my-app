class CreateMagazines < ActiveRecord::Migration[8.0]
  def change
    create_table :magazines do |t|
      t.string :name
      t.timestamps
    end
  end
end

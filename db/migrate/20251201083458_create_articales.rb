class CreateArticales < ActiveRecord::Migration[8.0]
  def change
    create_table :articales do |t|
      t.timestamps
    end
  end
end

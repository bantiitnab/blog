class CreateX3s < ActiveRecord::Migration[5.1]
  def change
    create_table :x3s do |t|
      t.string :name
      t.references :x1, foreign_key: true

      t.timestamps
    end
  end
end

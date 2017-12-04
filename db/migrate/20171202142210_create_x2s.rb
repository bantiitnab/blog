class CreateX2s < ActiveRecord::Migration[5.1]
  def change
    create_table :x2s do |t|
      t.string :name
      t.references :x1, foreign_key: true

      t.timestamps
    end
  end
end

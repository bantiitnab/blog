class CreateX7s < ActiveRecord::Migration[5.1]
  def change
    create_table :x7s do |t|
      t.references :x5, foreign_key: true
      t.references :x6, foreign_key: true

      t.timestamps
    end
  end
end

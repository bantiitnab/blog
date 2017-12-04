class CreateX1sX4s < ActiveRecord::Migration[5.1]
  def change
    create_table :x1s_x4s do |t|
      t.references :x1, foreign_key: true
      t.references :x4, foreign_key: true

      t.timestamps
    end
  end
end

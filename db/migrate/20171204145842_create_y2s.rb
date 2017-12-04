class CreateY2s < ActiveRecord::Migration[5.1]
  def change
    create_table :y2s do |t|
      t.string :name
      t.references :y1, foreign_key: true

      t.timestamps
    end
  end
end

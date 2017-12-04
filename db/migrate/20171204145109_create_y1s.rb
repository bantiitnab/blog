class CreateY1s < ActiveRecord::Migration[5.1]
  def change
    create_table :y1s do |t|
      t.string :name
      t.string :col1
      t.timestamps
    end
  end
end

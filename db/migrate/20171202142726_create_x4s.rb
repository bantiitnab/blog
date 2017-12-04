class CreateX4s < ActiveRecord::Migration[5.1]
  def change
    create_table :x4s do |t|
      t.string :name

      t.timestamps
    end
  end
end

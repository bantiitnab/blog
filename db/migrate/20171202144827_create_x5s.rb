class CreateX5s < ActiveRecord::Migration[5.1]
  def change
    create_table :x5s do |t|
      t.string :name

      t.timestamps
    end
  end
end

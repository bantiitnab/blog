class CreateX6s < ActiveRecord::Migration[5.1]
  def change
    create_table :x6s do |t|
      t.string :name

      t.timestamps
    end
  end
end

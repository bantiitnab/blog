class AddProfessionToPeoples < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :profession, :string
    add_column :people, :father_name, :string
  end
end

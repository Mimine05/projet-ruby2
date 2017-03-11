class AddNameToEntreprises < ActiveRecord::Migration[5.0]
  def change
    add_column :entreprises, :name, :string
  end
end

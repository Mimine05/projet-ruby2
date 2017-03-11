class AddDescriptionToEntreprises < ActiveRecord::Migration[5.0]
  def change
    add_column :entreprises, :description, :string
  end
end

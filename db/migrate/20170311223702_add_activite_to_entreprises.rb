class AddActiviteToEntreprises < ActiveRecord::Migration[5.0]
  def change
    add_column :entreprises, :activite, :string
  end
end

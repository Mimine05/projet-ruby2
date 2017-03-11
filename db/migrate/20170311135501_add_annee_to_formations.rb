class AddAnneeToFormations < ActiveRecord::Migration[5.0]
  def change
    add_column :formations, :annee, :string
  end
end

class AddEtablissementToFormations < ActiveRecord::Migration[5.0]
  def change
    add_column :formations, :etablissement, :string
  end
end

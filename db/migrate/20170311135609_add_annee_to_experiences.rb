class AddAnneeToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :annee, :string
  end
end

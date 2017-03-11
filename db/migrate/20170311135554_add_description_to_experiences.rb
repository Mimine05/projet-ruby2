class AddDescriptionToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :description, :string
  end
end

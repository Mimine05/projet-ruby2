class AddDescriptionToFormations < ActiveRecord::Migration[5.0]
  def change
    add_column :formations, :description, :string
  end
end

class AddLieuToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :lieu, :string
  end
end

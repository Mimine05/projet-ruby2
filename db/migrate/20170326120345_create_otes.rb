class CreateOtes < ActiveRecord::Migration[5.0]
  def change
    create_table :otes do |t|
    	t.references :offre, foreign_key: true
    	t.references :user, foreign_key: true
        t.string :description

      t.timestamps
    end
  end
end

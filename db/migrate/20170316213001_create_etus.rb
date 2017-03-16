class CreateEtus < ActiveRecord::Migration[5.0]
    def change
        create_table :etus do |t|
            t.references :user, foreign_key: true
            t.references :experience, foreign_key: true
            t.string :description
            t.string :lieu
            t.integer :annee
        end
    end
end

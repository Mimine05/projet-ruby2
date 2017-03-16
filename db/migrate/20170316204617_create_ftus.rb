class CreateFtus < ActiveRecord::Migration[5.0]
    def change
        create_table :ftus do |t|
            t.references :user, foreign_key: true
            t.references :formation, foreign_key: true
            t.string :description
            t.string :etablissement
            t.integer :annee        
        end
    end
end

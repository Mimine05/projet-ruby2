class CreateStes < ActiveRecord::Migration[5.0]
    def change
        create_table :stes do |t|
            t.references :entreprise, foreign_key: true
            t.references :secteur, foreign_key: true
            t.string :description
            t.string :name

            t.timestamps
        end
    end
end

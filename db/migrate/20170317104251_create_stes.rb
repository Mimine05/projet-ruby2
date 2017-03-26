class CreateStes < ActiveRecord::Migration[5.0]
    def change
        create_table :stes do |t|
            t.references :user, foreign_key: true
            t.references :secteur, foreign_key: true
            t.references :offre, foreign_key: true
            t.string :name

            t.timestamps
        end
    end
end

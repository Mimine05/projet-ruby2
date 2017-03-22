class CreateItus < ActiveRecord::Migration[5.0]
    def change
        create_table :itus do |t|
            t.references :user, foreign_key: true
            t.references :interet, foreign_key: true
            t.string :name
        end
    end
end

class CreateFormations < ActiveRecord::Migration[5.0]
    def change
        create_table :formations do |t|

            t.timestamps
            t.string :name
        end
    end
end

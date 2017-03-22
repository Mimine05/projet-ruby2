class CreateInterets < ActiveRecord::Migration[5.0]
  def change
    create_table :interets do |t|
      t.string :categorie

      t.timestamps
    end
  end
end

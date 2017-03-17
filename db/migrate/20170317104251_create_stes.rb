class CreateStes < ActiveRecord::Migration[5.0]
  def change
    create_table :stes do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end

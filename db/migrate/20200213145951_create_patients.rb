class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

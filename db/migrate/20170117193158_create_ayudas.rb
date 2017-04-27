class CreateAyudas < ActiveRecord::Migration[5.0]
  def change
    create_table :ayudas do |t|
      t.string :nombre
      t.references :departamento, foreign_key: true

      t.timestamps
    end
  end
end

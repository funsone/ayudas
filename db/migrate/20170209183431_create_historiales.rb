class CreateHistoriales < ActiveRecord::Migration[5.0]
  def change
    create_table :historiales do |t|
      t.integer :parentesco
      t.references :solicitante, foreign_key: true
      t.references :beneficiario, foreign_key: true

      t.timestamps
    end
  end
end

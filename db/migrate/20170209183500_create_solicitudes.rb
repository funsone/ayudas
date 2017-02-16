class CreateSolicitudes < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitudes do |t|
      t.integer :status
      t.text :descripcion
      t.references :ayuda, foreign_key: true
      t.references :beneficiario, foreign_key: true
      t.references :solicitante, foreign_key: true

      t.timestamps
    end
  end
end

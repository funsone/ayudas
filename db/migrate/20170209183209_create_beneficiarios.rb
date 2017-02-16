class CreateBeneficiarios < ActiveRecord::Migration[5.0]
  def change
    create_table :beneficiarios do |t|
      t.integer :tipo_cedula
      t.integer :cedula
      t.string :nombres
      t.string :apellidos
      t.integer :sexo
      t.date :fecha_de_nacimiento
      t.integer :oficio
      t.integer :estado_civil
      t.integer :tipo_de_casa
      t.integer :num_habitaciones
      t.integer :num_banos
      t.boolean :enseres
      t.string :obs_enseres
      t.boolean :discapacidad
      t.string :obs_discapacidad

      t.timestamps
    end
  end
end

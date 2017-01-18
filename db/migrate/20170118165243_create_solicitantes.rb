class CreateSolicitantes < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitantes do |t|
      t.integer :cedula
      t.integer :tipo_cedula
      t.string :nombres
      t.string :apellidos
      t.integer :sexo
      t.date :fecha_de_nacimiento
      t.string :lugar_de_nacimiento
      t.string :direccion
      t.integer :municipios
      t.integer :grado_de_instruccion
      t.string :obs_instruccion
      t.integer :oficio
      t.float :ingreso_mensual
      t.string :obs_ingreso
      t.string :empresa
      t.integer :carga_familiar
      t.string :telefono_fijo
      t.string :telefono_movil
      t.integer :estado_civil
      t.string :correo

      t.timestamps
    end
  end
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170209183500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ayudas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "departamento_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["departamento_id"], name: "index_ayudas_on_departamento_id", using: :btree
  end

  create_table "beneficiarios", force: :cascade do |t|
    t.integer  "tipo_cedula"
    t.integer  "cedula"
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "sexo"
    t.date     "fecha_de_nacimiento"
    t.integer  "oficio"
    t.integer  "estado_civil"
    t.integer  "tipo_de_casa"
    t.integer  "num_habitaciones"
    t.integer  "num_banos"
    t.boolean  "enseres"
    t.string   "obs_enseres"
    t.boolean  "discapacidad"
    t.string   "obs_discapacidad"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historiales", force: :cascade do |t|
    t.integer  "parentesco"
    t.integer  "solicitante_id"
    t.integer  "beneficiario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["beneficiario_id"], name: "index_historiales_on_beneficiario_id", using: :btree
    t.index ["solicitante_id"], name: "index_historiales_on_solicitante_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "solicitantes", force: :cascade do |t|
    t.integer  "cedula"
    t.integer  "tipo_cedula"
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "sexo"
    t.date     "fecha_de_nacimiento"
    t.string   "lugar_de_nacimiento"
    t.string   "direccion"
    t.integer  "municipios"
    t.integer  "grado_de_instruccion"
    t.string   "obs_instruccion"
    t.integer  "oficio"
    t.float    "ingreso_mensual"
    t.string   "obs_ingreso"
    t.string   "empresa"
    t.integer  "carga_familiar"
    t.string   "telefono_fijo"
    t.string   "telefono_movil"
    t.integer  "estado_civil"
    t.string   "correo"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "solicitudes", force: :cascade do |t|
    t.integer  "status"
    t.text     "descripcion"
    t.integer  "ayuda_id"
    t.integer  "beneficiario_id"
    t.integer  "solicitante_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["ayuda_id"], name: "index_solicitudes_on_ayuda_id", using: :btree
    t.index ["beneficiario_id"], name: "index_solicitudes_on_beneficiario_id", using: :btree
    t.index ["solicitante_id"], name: "index_solicitudes_on_solicitante_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  add_foreign_key "ayudas", "departamentos"
  add_foreign_key "historiales", "beneficiarios"
  add_foreign_key "historiales", "solicitantes"
  add_foreign_key "solicitudes", "ayudas"
  add_foreign_key "solicitudes", "beneficiarios"
  add_foreign_key "solicitudes", "solicitantes"
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_14_034051) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cita", force: :cascade do |t|
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string "tipo"
    t.string "estado"
    t.string "piezas"
    t.date "fecha_entrega"
    t.bigint "vehiculo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehiculo_id"], name: "index_servicios_on_vehiculo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "role"
    t.string "telefono"
    t.string "nombre"
    t.string "apellido"
    t.string "direccion"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehiculo_servicios", force: :cascade do |t|
    t.bigint "vehiculo_id", null: false
    t.bigint "servicio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["servicio_id"], name: "index_vehiculo_servicios_on_servicio_id"
    t.index ["vehiculo_id"], name: "index_vehiculo_servicios_on_vehiculo_id"
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string "patente"
    t.string "marca"
    t.string "modelo"
    t.string "ano"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "citum_id"
    t.index ["citum_id"], name: "index_vehiculos_on_citum_id"
    t.index ["user_id"], name: "index_vehiculos_on_user_id"
  end

  add_foreign_key "servicios", "vehiculos"
  add_foreign_key "vehiculo_servicios", "servicios"
  add_foreign_key "vehiculo_servicios", "vehiculos"
  add_foreign_key "vehiculos", "cita"
  add_foreign_key "vehiculos", "users"
end

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

ActiveRecord::Schema[7.0].define(version: 2022_11_14_204904) do
  create_table "areas", primary_key: "id_area", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", primary_key: "id_departamento", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.integer "num_equipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_area"
    t.index ["id_area"], name: "fk_rails_b6ab1a9d32"
  end

  create_table "equipos", primary_key: ["id", "serie"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.virtual "serie", type: :string, limit: 25, null: false, as: "_utf8mb4'(\"tipo\\\\',\"2022\" , \"id\")'", stored: true
    t.integer "id", null: false, auto_increment: true
    t.string "tipo"
    t.string "modelo"
    t.string "serial"
    t.string "observaciones"
    t.string "ram"
    t.string "disco_duro"
    t.integer "id_tipos"
    t.integer "id_marca"
    t.integer "id_departamento"
    t.integer "id_area"
    t.string "id_licencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "estatus"
    t.index ["id_area"], name: "fk_rails_a4cf02f5a8"
    t.index ["id_departamento"], name: "fk_rails_465d1eeb09"
    t.index ["id_licencia"], name: "fk_rails_4fc0b62523"
    t.index ["id_marca"], name: "fk_rails_1a23a30850"
    t.index ["id_tipos"], name: "fk_rails_cf2d83eca5"
  end

  create_table "licencia", primary_key: "id_licencia", id: { type: :string, limit: 20 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.integer "anio"
    t.string "num_licencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", primary_key: "id_marca", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", primary_key: "rfc", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "apellidouno"
    t.string "apellidodos"
    t.string "role"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "departamentos", "areas", column: "id_area", primary_key: "id_area"
  add_foreign_key "equipos", "areas", column: "id_area", primary_key: "id_area"
  add_foreign_key "equipos", "departamentos", column: "id_departamento", primary_key: "id_departamento"
  add_foreign_key "equipos", "licencia", column: "id_licencia", primary_key: "id_licencia"
  add_foreign_key "equipos", "marcas", column: "id_marca", primary_key: "id_marca"
  add_foreign_key "equipos", "tipos", column: "id_tipos"
end

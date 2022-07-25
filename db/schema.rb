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

ActiveRecord::Schema[7.0].define(version: 2022_07_25_182322) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expedients", force: :cascade do |t|
    t.string "nombre_solicitante"
    t.string "apellido_solicitante"
    t.string "tipo_persona"
    t.string "edad"
    t.bigint "expediente_status_id"
    t.date "fecha_nacimiento"
    t.bigint "tipo_solicitud_id"
    t.integer "cantidad_solicitada"
    t.string "identificador_unico"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

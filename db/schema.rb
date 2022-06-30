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

ActiveRecord::Schema[7.0].define(version: 2022_06_30_040336) do
  create_table "conciertos", force: :cascade do |t|
    t.string "lugar"
    t.date "fecha"
    t.integer "asistentes"
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_conciertos_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "nombre"
    t.integer "integrantes"
    t.integer "conciertos"
    t.date "debut"
    t.integer "genero"
    t.integer "contrato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "conciertos", "groups"
end

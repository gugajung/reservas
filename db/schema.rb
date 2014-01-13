# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140113123012) do

  create_table "clientes", force: true do |t|
    t.string   "cpf"
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["cpf"], name: "index_clientes_on_cpf", unique: true

  create_table "quartos", force: true do |t|
    t.integer  "numero"
    t.integer  "pessoas"
    t.boolean  "tem_tv"
    t.boolean  "tem_ar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quartos", ["numero"], name: "index_quartos_on_numero", unique: true

  create_table "reservas", force: true do |t|
    t.integer  "quarto"
    t.date     "inicio"
    t.date     "fim"
    t.integer  "Cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservas", ["Cliente_id"], name: "index_reservas_on_Cliente_id"

end

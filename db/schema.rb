# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_21_133255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cadastros", force: :cascade do |t|
    t.datetime "data_cadastro"
    t.string "katakana"
    t.string "nome"
    t.datetime "nascimento"
    t.integer "idade"
    t.string "genero"
    t.string "conjuge"
    t.string "nacionalidade"
    t.string "descendencia"
    t.string "descendencia_outros"
    t.integer "telefone"
    t.string "endereco"
    t.boolean "mudanca"
    t.boolean "moradia"
    t.string "zairyu_card"
    t.datetime "zairyu_card_validade"
    t.string "tempo_japao_anos"
    t.string "tempo_japao_meses"
    t.string "visto"
    t.string "escolaridade"
    t.string "escolaridade_status"
    t.string "blusa"
    t.string "cintura"
    t.string "calcado"
    t.string "altura"
    t.string "saude"
    t.string "enfermidade"
    t.boolean "alergia"
    t.string "tipo_alergia"
    t.string "tipo_sanguineo"
    t.string "uso_lentes"
    t.string "comunicacao"
    t.string "compreensao"
    t.string "kana_leitura"
    t.string "kana_escrita"
    t.string "hira_leitura"
    t.string "hira_escrita"
    t.string "kanji_leitura"
    t.string "kanji_escrita"
    t.boolean "carteira_motorista"
    t.boolean "carro"
    t.string "kensa"
    t.string "kensa_lupa"
    t.string "microscopio"
    t.string "montagem"
    t.string "solda"
    t.string "operador_maquina"
    t.string "solda_branca"
    t.text "habilidades_outros"
    t.boolean "horas_extras"
    t.boolean "feriados"
    t.boolean "turnos"
    t.boolean "folgas_irregulares"
    t.string "procedencia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "tempo_empresa_anos"
    t.string "tempo_empresa_meses"
    t.string "nome_empresa"
    t.string "local_trabalho"
    t.string "tipo_servico"
    t.string "colocacao"
    t.string "empreiteira"
    t.string "motivo_saida"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "familia", force: :cascade do |t|
    t.string "nome_familia"
    t.string "parentesco"
    t.integer "idade_familia"
    t.boolean "mora_junto"
    t.boolean "dependente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

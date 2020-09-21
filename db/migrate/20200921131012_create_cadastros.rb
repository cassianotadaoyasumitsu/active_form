class CreateCadastros < ActiveRecord::Migration[6.0]
  def change
    create_table :cadastros do |t|
      t.datetime :data_cadastro
      t.string :katakana
      t.string :nome
      t.datetime :nascimento
      t.integer :idade
      t.string :genero
      t.string :conjuge
      t.string :nacionalidade
      t.string :descendencia
      t.string :descendencia_outros
      t.integer :telefone
      t.string :endereco
      t.boolean :mudanca
      t.boolean :moradia
      t.string :zairyu_card
      t.datetime :zairyu_card_validade
      t.string :tempo_japao_anos
      t.string :tempo_japao_meses
      t.string :visto
      t.string :escolaridade
      t.string :escolaridade_status

      t.string :blusa
      t.string :cintura
      t.string :calcado
      t.string :altura
      t.string :saude
      t.string :enfermidade
      t.boolean :alergia
      t.string :tipo_alergia
      t.string :tipo_sanguineo
      t.string :uso_lentes

      t.string :comunicacao
      t.string :compreensao
      t.string :kana_leitura
      t.string :kana_escrita
      t.string :hira_leitura
      t.string :hira_escrita
      t.string :kanji_leitura
      t.string :kanji_escrita

      t.boolean :carteira_motorista
      t.boolean :carro
      t.string :kensa
      t.string :kensa_lupa
      t.string :microscopio
      t.string :montagem
      t.string :solda
      t.string :operador_maquina
      t.string :solda_branca
      t.text :habilidades_outros

      t.boolean :horas_extras
      t.boolean :feriados
      t.boolean :turnos
      t.boolean :folgas_irregulares

      t.string :procedencia

      t.timestamps
    end
  end
end

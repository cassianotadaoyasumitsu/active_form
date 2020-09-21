class CreateEmpresas < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas do |t|
      t.string :tempo_empresa_anos
      t.string :tempo_empresa_meses
      t.string :nome_empresa
      t.string :local_trabalho
      t.string :tipo_servico
      t.string :colocacao
      t.string :empreiteira
      t.string :motivo_saida

      t.timestamps
    end
  end
end

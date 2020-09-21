class CreateFamilia < ActiveRecord::Migration[6.0]
  def change
    create_table :familia do |t|
      t.string :nome_familia
      t.string :parentesco
      t.integer :idade_familia
      t.boolean :mora_junto
      t.boolean :dependente

      t.references :cadastro, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :corredor
      t.boolean :em_estoque

      t.timestamps
    end
  end
end

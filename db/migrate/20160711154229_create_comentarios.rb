class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.text :conteudo
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end

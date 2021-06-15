class CreateComunicados < ActiveRecord::Migration[6.1]
  def change
    create_table :comunicados do |t|
      t.string :creador_id
      t.string :receptor_id
      t.string :asunto
      t.string :contenido
      t.string :comunicado_anterior_id

      t.timestamps
    end
  end
end

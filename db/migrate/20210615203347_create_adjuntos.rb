class CreateAdjuntos < ActiveRecord::Migration[6.1]
  def change
    create_table :adjuntos do |t|
      t.string :comunicado_id
      
      t.timestamps
    end
  end
end

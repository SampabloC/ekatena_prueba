class CreateJuicios < ActiveRecord::Migration[6.1]
  def change
    create_table :juicios do |t|
      t.string :actor
      t.string :demandando
      t.string :expediente
      t.string :notificaciones
      t.string :resumen
      t.string :juzgado

      t.timestamps
    end
  end
end

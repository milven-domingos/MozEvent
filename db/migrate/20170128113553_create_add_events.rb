class CreateAddEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :add_events do |t|
      t.string :nome_do_event
      t.string :local_do_evento
      t.date :data_do_evento
      t.time :hora_do_event
      t.text :descricao_do_evento
      t.string :slug

      t.timestamps
    end
    add_index :add_events, :slug, unique: true
  end
end

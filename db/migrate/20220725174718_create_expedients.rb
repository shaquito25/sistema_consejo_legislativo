class CreateExpedients < ActiveRecord::Migration[7.0]
  def change
    create_table :expedients do |t|
      t.string :nombre_solicitante
      t.string :apellido_solicitante
      t.string :tipo_persona
      t.string :edad
      t.integer :expediente_status_id
      t.date :fecha_nacimiento
      t.integer :tipo_solicitud_id
      t.integer :cantidad_solicitada
      t.string :identificador_unico
      t.string :email

      t.timestamps
    end
  end
end

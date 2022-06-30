class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :nombre
      t.integer :integrantes
      t.integer :conciertos
      t.date :debut
      t.integer :genero
      t.integer :contrato

      t.timestamps
    end
  end
end

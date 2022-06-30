class CreateConciertos < ActiveRecord::Migration[7.0]
  def change
    create_table :conciertos do |t|
      t.string :lugar
      t.date :fecha
      t.integer :asistentes
      t.belongs_to :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end

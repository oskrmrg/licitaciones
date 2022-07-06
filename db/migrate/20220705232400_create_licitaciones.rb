class CreateLicitaciones < ActiveRecord::Migration[6.1]
  def change
    create_table :licitaciones do |t|
      t.string :titulo, null: false 
      t.string :descripcion, null: false 
      t.integer :presupuesto, null: false 
      t.references :categoria, null: false, foreign_key: true
      t.references :licitante, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end

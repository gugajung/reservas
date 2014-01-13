class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :quarto
      t.date :inicio
      t.date :fim
      t.belongs_to :Cliente, index: true

      t.timestamps
    end
  end
end

class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cpf
      t.string :nome
      t.date :data_nascimento
      t.string :sexo

      t.timestamps
    end
    add_index :clientes, :cpf, unique: true
  end
end

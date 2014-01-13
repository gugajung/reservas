class CreateQuartos < ActiveRecord::Migration
  def change
    create_table :quartos do |t|
      t.integer :numero
      t.integer :pessoas
      t.boolean :tem_tv
      t.boolean :tem_ar

      t.timestamps
    end
    add_index :quartos, :numero, unique: true
  end
end

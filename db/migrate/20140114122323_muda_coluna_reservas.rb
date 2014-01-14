class MudaColunaReservas < ActiveRecord::Migration
  def change
  	rename_column :reservas, :Cliente_id, :cliente_id
  end
end

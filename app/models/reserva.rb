class Reserva < ActiveRecord::Base

	validate :data_final_maior
	attr_accessible :inicio, :fim, :quarto
	belongs_to :cliente

	def data_final_maior
		if fim < inicio
			errors.add :fim, "não pode ser menor que a data de inicio"
		end
	end
end

class Comunicado < ApplicationRecord
	has_many :adjuntos
	
	belongs_to :creador, class_name: "Persona"
	belongs_to :receptor, class_name: "Persona"

	scope :publicados_por_mayores_de_edad, -> { 
		joins(:creador).where("fecha_nacimiento <= ?", Date.current - 18.years)
	}

	scope :con_numero_de_adjuntos, -> { 
		joins(:adjuntos).select("comunicados.*, COUNT(adjuntos.id) as numero_adjuntos").group("comunicados.id")
	}
end

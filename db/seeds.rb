# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Personas mayores de Edad
persona_mayor_1 = Persona.create!(nombre: "Persona 1", fecha_nacimiento: "2003-06-14")
persona_mayor_2 = Persona.create!(nombre: "Persona 2", fecha_nacimiento: "2002-03-10")
persona_mayor_3 = Persona.create!(nombre: "Persona 3", fecha_nacimiento: "2001-04-02")

# Personas menores de Edad
persona_menor_1 = Persona.create!(nombre: "Persona 4", fecha_nacimiento: "2004-06-15")
persona_menor_2 = Persona.create!(nombre: "Persona 5", fecha_nacimiento: "2005-07-14")
persona_menor_3 = Persona.create!(nombre: "Persona 6", fecha_nacimiento: "2008-01-01")


# Comunicados realizados por personas mayores de Edad
# ===================================================
comunicado_1 = persona_mayor_1.comunicados_creados.create!(receptor: persona_mayor_2, asunto: "A1", contenido: "C1")
# Dos adjuntos para el comunicado
comunicado_1.adjuntos.create!
comunicado_1.adjuntos.create!

comunicado_2 = persona_mayor_1.comunicados_creados.create!(receptor: persona_menor_1, asunto: "A1", contenido: "C1")
# Un adjuntos para el comunicado
comunicado_2.adjuntos.create!

comunicado_3 = persona_mayor_2.comunicados_creados.create!(receptor: persona_mayor_3, asunto: "A2", contenido: "C2")


# Comunicados realizados por personas menores de Edad
# ===================================================
comunicado_4 = persona_menor_1.comunicados_creados.create!(receptor: persona_menor_2, asunto: "A3", contenido: "C3")
comunicado_5 = persona_menor_3.comunicados_creados.create!(receptor: persona_menor_3, asunto: "A3", contenido: "C3")

comunicado_6 = persona_menor_3.comunicados_creados.create!(receptor: persona_mayor_1, asunto: "A3", contenido: "C3")
# Tres adjuntos para el comunicado
comunicado_6.adjuntos.create!
comunicado_6.adjuntos.create!
comunicado_6.adjuntos.create!
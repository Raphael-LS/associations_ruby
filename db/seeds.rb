# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
d1 = Doctor.create(name: "Doutor Pimpolho")
d2 = Doctor.create(name: "Doutor Tabajara")

p1 = Patient.create(name: "Pedro")
p2 = Patient.create(name: "Juliana")

Appointment.create(doctor: d1, patient: p1, date: DateTime.now)
Appointment.create(doctor: d2, patient: p2, date: DateTime.now)
Appointment.create(doctor: d1, patient: p2, date: DateTime.now)
Appointment.create(doctor: d2, patient: p1, date: DateTime.now)

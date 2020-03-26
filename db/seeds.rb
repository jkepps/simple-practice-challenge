# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
  physician = Physician.create(name: "Physician-#{index}")
  client = Client.create(name: "Client-#{index}")

  10.times { Appointment.create(starts_at: Time.now, duration: index + 10, physician: physician, client: client) }
end

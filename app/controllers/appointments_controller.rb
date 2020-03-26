# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all.includes(:physician, :client)

    render json: { appointments: serialized_appointments }
  end

  def serialized_appointments
    @appointments.map do |appointment|
      {
        starts_at: appointment.starts_at,
        duration: appointment.duration,
        client: {
          id: appointment.client.id,
          name: appointment.client.name
        },
        physician: {
          id: appointment.physician.id,
          name: appointment.physician.name
        }
      }
    end
  end
end

# {
#   starts_at: '',
#   duration: 343,
#   client: {
#     id: 12,
#     name: 'John Smith'
#   },
#   physician: {
#     id: 34,
#     name: ''
#   }
# }

# {

#   client_name: 'John Smith',
#   physician_name: 'Dr. Lisa'
# }

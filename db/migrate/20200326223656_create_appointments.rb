# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :physician
      t.references :client
      t.datetime :starts_at, null: false
      t.integer :duration, null: false

      t.timestamps
    end
  end
end

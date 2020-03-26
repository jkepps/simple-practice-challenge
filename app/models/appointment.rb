# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :physician

  validates :client, presence: true
  validates :physician, presence: true
  validates :starts_at, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }
end

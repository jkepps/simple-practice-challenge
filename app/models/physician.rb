# frozen_string_literal: true

class Physician < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
end

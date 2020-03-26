# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
end

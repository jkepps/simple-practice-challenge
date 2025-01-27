# frozen_string_literal: true

class CreatePhysicians < ActiveRecord::Migration[6.0]
  def change
    create_table :physicians do |t|
      t.string :name

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateDharmaTalks < ActiveRecord::Migration[6.1]
  def change
    create_table :dharma_talks do |t|
      t.string :title
      t.text :description
      t.references :speaker, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end

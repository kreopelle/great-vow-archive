# frozen_string_literal: true

json.extract! speaker, :id, :name, :bio, :role, :created_at, :updated_at
json.url speaker_url(speaker, format: :json)

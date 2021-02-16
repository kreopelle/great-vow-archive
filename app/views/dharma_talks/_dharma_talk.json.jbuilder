# frozen_string_literal: true

json.extract! dharma_talk, :id, :title, :description, :speaker_id, :location_id, :date, :created_at, :updated_at
json.url dharma_talk_url(dharma_talk, format: :json)

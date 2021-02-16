# frozen_string_literal: true

json.array! @speakers, partial: 'speakers/speaker', as: :speaker

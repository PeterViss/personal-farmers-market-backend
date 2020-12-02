# frozen_string_literal: true

class ApplicationController < ActionController::API
  def secret_key
    ''
  end

  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
  end

  def decode(token)
    JWT.decode(token, secret_key, true, algorithm: 'HS256').first
  end
end

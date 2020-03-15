# frozen_string_literal: true

class StatesController < ApplicationController
  def index
    states = State.all
    render json: states.to_json(state_show)
  end

  private

  def state_show
    { except: %i[created_at updated_at] }
  end
end

# frozen_string_literal: true

# Example controller
class HelloController < ApplicationController
  def index
    render json: { message: "Hello, world!" }
  end
end

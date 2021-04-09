class Api::RobotsController < ApplicationController
  before_action :validate_parameter

  def orders
  end

  private

  def validate_parameter
    if params[:commands].present?
      array = params[:commands].tr('[]', '').split(',')
      puts '---------------'
      p array
      p array[0]
      puts '---------------'
    end
  end
end

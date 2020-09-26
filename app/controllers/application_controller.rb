class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, ActiveRecord::RecordInvalid, with: :render_error

  def render_error(exception)
    render json: { error: exception.message }
  end
end

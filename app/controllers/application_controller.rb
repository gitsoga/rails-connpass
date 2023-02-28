class ApplicationController < ActionController::Base
  # マッチ度が高いものを下に記載する
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  protect_from_forgery with: :null_session

  private

  def record_not_found
    render json: { errors: [{ code: 'E0001', message: '404 Not Found' }] }, status: 404
  end
end

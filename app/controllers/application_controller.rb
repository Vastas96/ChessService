class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def record_not_found
    render text: "Record not found", status: 404
  end

  def routing_error
    respond_to do |format|
      format.html { render text: "Not found, sorry", status: :not_found }
      format.json { render json: { text: "Not found, sorry" }, status: :not_found }
    end
  end
end

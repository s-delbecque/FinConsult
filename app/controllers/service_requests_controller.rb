class ServiceRequestsController < ApplicationController
  before_action :set_service, only: [:new, :create]

  def new
    @service_request = ServiceRequest.new
    authorize @service_request
  end

  def create
    @service_request = ServiceRequest.new(service_request_params)
    @service_request.service = @service
    @service_request.user = current_user
    authorize @service_request
    if @service_request.save
      redirect_to service_path(@service)
    else
      render 'new'
    end
  end

  def show
    @service_requests = ServiceRequest.all
    authorize @service_request
  end

  def destroy
  end

  private

  def service_request_params
    params.require(:service_request).permit(:description, :time_frame)
  end

  def set_service
    @service = Service.find(params[:service_id])
  end
end

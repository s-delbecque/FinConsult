class ServiceRequestsController < ApplicationController
  def new
    @service_request = ServiceRequest.new
  end

  def create

  end

  def show

    @service_requests = ServiceRequest.all
  end

  def destroy
  end
end

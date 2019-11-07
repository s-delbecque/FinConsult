class PagesController < ApplicationController
  def profile
    current_user
  end

  def sent_requests
    @service_requests = current_user.sent_requests
  end

  def received_requests
    @service_requests = current_user.service_requests
  end

  def services
    @services = current_user.services
  end

  def service
    @service = current_user.services
  end

end

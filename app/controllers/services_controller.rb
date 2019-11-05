class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
    @service = Service.new
  end

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path(@service)
    else
      render 'new'
    end
  end

  # def update
  # end

  # def destroy
  # end

  # def edit
  # end

  private

  def service_params
    params.require(:service).permit(:picture_url, :name, :description, :rate_per_day, :category, :address)
  end
end

class UsersController < ApplicationController
  before_action :find_service, only: [:destroy]

  def new
    @user = User.new
  end

  def edit_offered_service
    @user = current_user
    authorize @user
  end

  def remove_offered_service
    @user = current_user
    authorize @user
    offered_service = find_service
    offered_service.destroy
    redirect_to '/user/services'
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end
end

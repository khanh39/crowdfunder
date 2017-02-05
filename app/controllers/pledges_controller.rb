class PledgesController < ApplicationController

  before_action do
    @project = Project.find(params[:project_id])
      # User.find(params[:user_id])
  end


  def index
  end

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user = current_user
    @pledge.project = @project

    if @pledge.save!
      redirect_to @project
      flash[:notice] = "Pledge succesfully created."
    else
      flash[:error] = "Sorry, pledge not succesful."
      render :new
      # redirect_to user_project_path
    end

  end

  def show
    @pledge = Pledge.find(params[:id])
  end

  private

  def pledge_params
    params.require(:pledge).permit(:pledged_amount)
  end

end

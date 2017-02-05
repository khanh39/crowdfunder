class ProjectsController < ApplicationController

  # To have the @user object available in the ProjectsController
    #
    # before_action do
    #   @users = User.find(params[:user_id])
    # end

    def index
      @projects = Project.all
    end

    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      # example code for reference
      # @event.location = @location
      @project.user = @user

      if @project.save
        redirect_to [@user, @project]
      else
        render :new
      end

    end

    def show
      @project = Project.find(params[:id])
      @pledge = Pledge.new
    end

    def project_params
      params.require(:project).permit(:title, :description, :goal_amount, :deadline)
    end
  end

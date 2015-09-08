class GroupsController < ApplicationController
  #before_action :authenticate_user!

  def index
    @groups = Group.all
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end
end

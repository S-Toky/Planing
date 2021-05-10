class HomesController < ApplicationController
  def index
    @boards = current_user.boards
    @projects = current_user.projects
  end
end

class HomesController < ApplicationController
  def index
    @boards = current_user.boards.order(created_at: :desc)
    @projects = current_user.projects.order(created_at: :desc)
  end
end

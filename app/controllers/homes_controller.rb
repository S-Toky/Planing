class HomesController < ApplicationController

  def index
    if user_signed_in?
      @boards = current_user.boards.order(created_at: :desc)
      @projects = current_user.projects.order(created_at: :desc)
    else
      @boards = Board.all
      @projects = Project.all
    end
    
  end
  
end

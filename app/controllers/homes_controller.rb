class HomesController < ApplicationController
  def index
    @boards = Board.all.order(created_at: :desc)
    @projects = Project.all.order(created_at: :desc)
  end
end

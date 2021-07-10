class CommentsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index
    @comments = Comment.all 
  end

  def new
    @comment = Comment.new
  end
end

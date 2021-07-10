class CommentsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index
    if params[:recipe_id] && @recipe = Recipe.find_by_id(params[:recipe_id]) #if nested and then setting a value and checking if @recipe is nill or something 
      @comments = @recipe.comments
    else
      @error = "Does not exist" if params[:post_id]
      @comments = Comment.all 
    end
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end

  def show 
    @comment = Comment.find_by(id: params[:id])
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :recipe_id)
  end
end

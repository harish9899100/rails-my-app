class CommentsController < ApplicationController
  def new
    @comment = Comment.new(name: cookies[:commenter_name])
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      if params[:remember_name]
        cookies[:commenter_name] = @comment.name
      else
        cookies.delete(:commenter_name)
      end
      redirect_to comment_path(@comment)
    else
      render action: "new"
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:name)
  end
end

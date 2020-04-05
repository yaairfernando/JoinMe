class CommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    @comment.creator_id = current_user.id if current_user
    @comment.save!
    flash[:success] = 'New comment added'
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
  end

  def index
    @comments = Event.find(params[:event_id]).comments
    # byebug
    respond_to do |f|
      f.html
      f.js
      f.json
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end

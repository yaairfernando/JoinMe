class CommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    @comment.creator_id = current_user.id if current_user
    # byebug
    @comment.save!
    respond_to do |f|
      f.html
      f.js
      f.json
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
  end

  def index
    @event = Event.find(params[:event_id])
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

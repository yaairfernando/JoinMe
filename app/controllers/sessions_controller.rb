class SessionsController < ApplicationController

  def new
    respond_to do |format|
      format.js {render layout: false} 
    end
  end

  def create
  
  end

  def destroy
  end
end

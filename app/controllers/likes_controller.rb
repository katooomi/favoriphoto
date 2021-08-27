class LikesController < ApplicationController
  
  def create
   @like = current_user.likes.create(collection_id: params[:collection_id])
   redirect_to root_path
  end
　　
  def destroy
    @like = Like.find_by(controller_id: params[:collection_id], user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end
end

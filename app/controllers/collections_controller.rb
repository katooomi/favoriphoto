class CollectionsController < ApplicationController
  
  def index
   @collections = Collection.all
  #  @collection = Collection.find(collection_params)
   @like = Like.new
  end

  def new_params
   @collection = Collection.new
  end

  def create
    Collection.create(collection_params)
  end

  private

  def collection_params
    params.permit(:tweet, :image).merge(user_id: current_user.id)
  end
end

class VotesController < ApplicationController
  before_filter :set_album

  respond_to :js

  def create
    @album.votes.create(user_id: current_user.id)
    render 'update'
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    render 'update'
  end

  protected

  def set_album
    @album = Album.find(params[:album_id])
  end
end

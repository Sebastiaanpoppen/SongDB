class SongsController < ApplicationController

  def index
    @songs = Song.all
    @artists = Artist.all
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find( song_params )
    if @song.update_attributes( song_params )
       redirect_to @song
    else
       render 'edit'
    end
  end

  def create
    @song = Song.new ( song_params )

    if @song.save
      redirect_to root_path

    else
      render 'new'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path
  end


private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end

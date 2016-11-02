class SongsController < ApplicationController
  before_filter :load_artist

  def index
    @songs = @artist.songs.all
  end

  def new
    @song = @artist.songs.new
  end


  def edit
    @song = @artist.songs.find(params[:id])
  end

  def update
    @song = @artist.songs.find(params[:id])
    if @song.update_attributes(song_params)
       redirect_to artist_path(@artist, @song), notice: 'song was succesfully updated'
    else
       render 'edit'
    end
  end

  def show
    @song = @artist.songs.find(params[:id])
  end

  def create
    @song = @artist.songs.create(song_params)
      if @song.save
      redirect_to artist_path(@artist)
    end
  end



  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist)
  end


private

  def artist_params
    params.require(:artist).permit(:name, :image)
  end

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end

  def load_artist
    @artist = Artist.find(params[:artist_id])
  end

end

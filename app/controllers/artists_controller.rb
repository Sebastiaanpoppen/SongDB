class ArtistsController < ApplicationController

def index
  @artists = Artist.all
  @filterrific = initialize_filterrific(
      Artist,
      params[:filterrific],
      select_options: {
        sorted_by: Artist.options_for_sorted_by,
    },)or return

    # @artists = @filterrific.find.al(params[:page])

    respond_to do |format|
         format.html
         format.js
       end

  end

def show
    @artist = Artist.find(params[:id])
    @photos = @artist.photos
    @song = Song.new
    # @artists = @Artist.photos
end


def new
  @artist = Artist.new
end

def create
  @artist = Artist.create( artist_params )

  if @artist.save
    image_params.each do |image|
    @artist.photos.create(image: image)
  end
     redirect_to @artist, notice: "Artist successfully created"
  else
     render :new
  end
end


def edit
  @artist = Artist.find(params[:id])
  @photos = @artist.photos
end

def update
  @artist = Artist.find( params[:id] )

  if @artist.update( artist_params )
    image_params.each do |image|
    @artist.photos.create(image: image)
  end

     redirect_to artist_path(@artist), notice: "Artist successfully updated"
  else
     render :update
  end
end

def destroy
  @artist = Artist.find(params[:id])
  @artist.photos.delete_all
  @artist.destroy
  redirect_to artists_path
end

private
  def artist_params
    params.require(:artist).permit(:name, :image)
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

end

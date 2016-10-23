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
    # @artists = @Artist.photos
end

end

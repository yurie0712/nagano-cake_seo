class Members::GenresController < Members::Base
  def show
  	@genre = Genre.find(params[:id])
  	@genres = Genre.where(validity: true)
  end

  private
  def genre_params
  	params.require(:genre).permit(:name,:id)
  end
end

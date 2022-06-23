class AnnoncesController < ApplicationController

  def index
    @annonces = Annonce.all

    @markers = @annonces.geocoded.map do |annonce|
      {
        lat: annonce.latitude,
        lng: annonce.longitude
      }
    end
  end

  def new
    @annonce = Annonce.new
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user = current_user
    @annonce.temperature = params[:annonce][:temperature].to_i
    @annonce.stock_type = params[:annonce][:stock_type].to_i
    @annonce.transit if annonce_params[:transit] == 1
    @annonce.long_term if annonce_params[:long_term] == 1
    if @annonce.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @annonce = Annonce.find(params[:id])
  end

  def update
    @annonce = Annonce.find(params[:id])
    if @annonce.update(annonce_params)
      flash[:success] = "Votre annonce a bien été modifiée"
      redirect_to @annonce
    else
      flash[:error] = "Erreur lors de la mise à jour de votre annonce"
      render 'edit'
    end
  end

  def destroy
    @annonce = Annonce.find(params[:id])
    if @annonce.destroy
      flash[:success] = 'Object was successfully deleted.'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to user_path
  end

  def availability
    @annonce = Annonce.find(params[:annonce_id])
    if @annonce.available == true
      @annonce.available = false
    else
      @annonce.available = true
    end
    @annonce.save
    redirect_to user_path(current_user)
  end

  private

  def annonce_params
    params.require(:annonce).permit(:name, :address, :price, :description, :quantity, :at_least_one_surface, :transit, :long_term)
  end
end

class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def new
    @outfit = Outfit.new
  end

  def edit
    @outfit = Outfit.find(params[:id])
  end

  def create
    @outfit = Outfit.new(params[:outfit])

    if @outfit.save
      redirect_to @outfit, notice: 'Outfit was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @outfit = Outfit.find(params[:id])

    if @outfit.update_attributes(params[:outfit])
      redirect_to @outfit, notice: 'Outfit was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destroy
    redirect_to outfits_url
  end
end

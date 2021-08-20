class CoffeeesController < ApplicationController
  def new
    @coffeee = Coffeee.new
  end

  def create
    @coffeee = Coffeee.create(coffeee_params)
    if @coffeee.save
      flash[:green] = 'Coffee Was Created!'
      redirect_to coffeee_path(@coffeee)
    else
      flash[:red] = 'Coffee Could Not Be Created.'
      redirect_to new_coffeee_path
    end
  end

  def index
    if !params[:name].blank?
      @coffeees = Coffeee.where('name LIKE?', "#{params[:name]}")
    else
      @coffeees = Coffeee.last_twelve
    end
  end

  def show
    @coffeee = Coffeee.find(params[:id])
  end

  def edit
    @coffeee = Coffeee.find(params[:id])
  end

  def update
    @coffeee = Coffeee.find(params[:id])
    @coffeee.update(coffeee_params)
    redirect_to coffeee_path(@coffeee)
  end

  def destroy
    @coffeee = Coffeee.find(params[:id])
    @coffeee.reviews.each do |r|
      r.destroy
    end
    @coffeee.destroy
    redirect_to coffeees_path
  end

  private

  def coffeee_params
    params.require(:coffeee).permit(:name, :category, :roast, :body, :acidity, :imgurl, reviews_attributes: [:rating, :style, :recipe, :adatives, :favorite, :details], brand_attributes: [:name, :location])
  end
end

class BrandsController < ApplicationController
  def new
  end

  def create
    @coffeee = Coffeee.find(brand_params[:coffee_id])
    @brand = @coffeee.set_brand(brand_params)
    if @brand.save
      @coffeee.save
      flash[:green] = 'Brand Was Added!'
      redirect_to cofee_path(@cofeee)
    else
      flash[:red] = 'Brand Could Not Be Added.'
      redirect_to cofee_path(@cofeee)
    end
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    @brand.update(brand_params)
    redirect_to brand_path(@brand)
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to coffeees_path
  end

  private

  def brand_params
    params.require(:brand).permit[:coffeee_id, :name, :location]
  end
end

class BusinessesController < ApplicationController

  def index 
    @business = Business.last(5)
  end

  def show
    @business = Business.find(params[:id])
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def business_params
      params.require(:business).permit(:content, :department, :period, :reward, :number, :comment, :skill, :image).merge(company_id: current_company.id)
    end
  
end

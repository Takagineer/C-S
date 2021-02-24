class BusinessesController < ApplicationController

  def index 
    @business = Business.all.where(ids = "")
  end

  def show
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
      params.require(:business).permit(:content, :department, :period, :reward, :number, :comment, :skill).merge(company_id: current_company.id)
    end
  
end

class CompaniesController < ApplicationController
  def index
    
  end
  
  def show
    @company_businesses = Business.select("content").where(company_id = params[:id])
  end

  def new
  end
  
end

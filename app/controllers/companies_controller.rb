class CompaniesController < ApplicationController
  def index
    @company_businesses = Business.select("content").where(company_id = params[:id])
  end
  
  def show
    
  end

  def new
  end
  
end

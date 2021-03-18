class CompaniesController < ApplicationController
  def index
    @company_businesses = Business.where(company_id: current_company.id)
  end
  
  def show
    
  end

  def new
  end
  
end

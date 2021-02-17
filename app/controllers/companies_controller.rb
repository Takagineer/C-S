class CompaniesController < ApplicationController
  def index
    
  end
  
  def show
    @company_business = Business.select("content")
  end

  def new
  end

end

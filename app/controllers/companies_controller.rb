class CompaniesController < ApplicationController
  def show
    @company = Company.find([:id])
  end

  
end

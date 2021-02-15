class CompaniesController < ApplicationController
  def show
  end

  private
    def  choose_company
      @company = Compnay.find([:id])
    end
end

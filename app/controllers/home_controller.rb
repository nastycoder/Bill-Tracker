class HomeController < ApplicationController
  def index
    @companies = current_user.companies
  end
end

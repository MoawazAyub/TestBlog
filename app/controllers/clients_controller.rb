class ClientsController < ApplicationController

  def index
  end

  def show
  	@data = params[:client][:phone]
  	binding.pry
  end
end

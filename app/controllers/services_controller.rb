class ServicesController < ApplicationController
  def index
  end

  def show
    @service = Service.find(params[:id])
    
  end

  def new
  end

  def create
  end

  def destroy
  end

  def search
    @services = Service.search(params[:service])

  end


end

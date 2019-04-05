class Api::PhonesController < ApplicationController

  def index
    @phones = Phone.all
    render 'index.json.jbuilder'
  end

  def show
    @phone = Phone.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @phone = Phone.new(

      name: params[:name] , 
      color: params[:color],
      gigs: params[:gigs],
      year_released: params[:year_released]
    )

    # @phone.save
    if @phone.save == true
      render 'show.json.jbuilder'
    else
      render json: {message: "Phone not correctly saved..."}
    end
  end
end

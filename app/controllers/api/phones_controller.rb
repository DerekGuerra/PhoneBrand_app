class Api::PhonesController < ApplicationController

  def index
    @phones = Phone.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @phone = Phone.find_by(id: the_id)
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

  def update
    the_id = params[:id]
    @phone = Phone.find_by(id: the_id)

    @phone.name = params[:name]
    @phone.color = params[:color]
    @phone.gigs = params[:gigs]
    @phone.year_released = params[:year_released]
      

    if @phone.save == true
      render 'show.json.jbuilder'
    else
      render json: {message: "phone not updated correctly..."}
    end
  end
end

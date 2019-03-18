class Api::PhonesController < ApplicationController

  def index
    @phones = Phone.all
    render 'index.json.jbuilder'
  end

  def show
    @phone = Phone.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end

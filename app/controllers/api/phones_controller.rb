class Api::PhonesController < ApplicationController

  def index
    @phones = Phone.all
    render 'index.json.jbuilder'
  end
end

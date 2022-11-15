class SearchController < ApplicationController
  def create
    palabra = params[:keyword]

    @equipos1s = Equipos1.where("serie LIKE ?",palabra)
    
    respond_to do |format|
      format.html{redirect_to equipos1s_path}
      format.json {render json: @equipos1s}
      format.js 
  end
end

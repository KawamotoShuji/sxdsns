class SearchesController < ApplicationController
  def show
    $search = Search.search(params[:search])
    #binding.pry
  end
end
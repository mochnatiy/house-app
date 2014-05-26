class StreetsController < ApplicationController

  def autocomplete
    render json: StreetsIndex.autocomplete(params[:query]).map { |st| { :id => st.id, :name => st.full_path } }
  end
end

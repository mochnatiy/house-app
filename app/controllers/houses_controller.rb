class HousesController < ApplicationController

  def index
    if request.xhr? && params[:street_id].present?
      render json: House.where(:street_id => params[:street_id]).select(%w{id number})
    end
  end

  def show
    @house = House.find_by_id(params[:id])
    @order_request = OrderRequest.new
  end
end

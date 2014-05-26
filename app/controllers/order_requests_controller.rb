class OrderRequestsController < ApplicationController

  def index
  end

  def create
    respond_to do |format|
      format.html { redirect_to order_requests_url, notice: 'Спасибо за заявку, наш менеджер свяжется с Вами в течении получаса' }
    end
  end

  private
  def order_request_params
    params.require(:order_request).permit(:house_id)
  end
end

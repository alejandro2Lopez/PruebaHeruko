module Api
  class OrderDetailsController < ApplicationController
    before_action :set_order_detail, only: %i[show edit update destroy]
    skip_before_action :verify_authenticity_token
    def index
      @order_details = OrderDetail.all
      render 'api/order_details/index', status: :created
    end

    def show; end

    def new
      @order_detail = OrderDetail.new
    end

    def edit; end

    def create
      @order_detail = OrderDetail.new(order_detail_params)

      if @order_detail.save
        render 'api/order_details/index', status: :created
      else
        render json: @order_detail.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @order_detail.destroy
      render 'api/order_details/index', status: :created
    end

    private

    def set_order_detail
      @order_detail = OrderDetail.find(params[:id])
    end

    def order_detail_params
      params.require(:order_detail).permit(:dish_id, :client_id, :isConfirm)
    end
  end
end

module Api
  class ClientsController < ApplicationController
    before_action :set_client, only: %i[show edit update]
    skip_before_action :verify_authenticity_token

    def show; end

    def new
      @client = Client.new
    end

    def edit; end

    def create
      @client = Client.new(client_params)

      if @client.save
        render 'api/clients/show', status: :created
      else
        render json: @client.errors, status: :unprocessable_entity
      end
    end

    def update
      if @pet.update(pet_params)
        render 'api/clients/show', status: :created
      else
        render json: @clients.errors, status: :unprocessable_entity
      end
    end

    private

    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.require(:client).permit(:name, :last_name, :adress, :email, :password)
    end
  end
end

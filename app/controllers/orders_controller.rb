class OrdersController < ApplicationController
    before_action :set_listing , only: [:new, :create]
    before_action :authenticate_user! , only: [:new, :create, :index]

    def index
        @order = current_user.orders
    end

    def new
        @order = Order.new
    end

    def create
        price = order_params[:quantity].to_i * @listing.price
        updated_quantity = @listing.quantity - order_params[:quantity].to_i
        @order = Order.create(user: current_user, listing: @listing, quantity: order_params[:quantity], price: price)
        @listing.update(quantity: updated_quantity)
        redirect_to listings_path, notice: "Quantity for #{@listing.title} purchased successfully!"
    end

    def set_listing
        @listing = Listing.find(params[:listing_id])
    end

      # Only allow a list of trusted parameters through.
    def order_params
        params.require(:order).permit(:quantity)
    end
end

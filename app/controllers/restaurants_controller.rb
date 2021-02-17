class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [ :show, :edit ]
    def index
        @restaurants = Restaurant.all
      end
    
      def show
      end
    
      def new
        @restaurants = Restaurant.new
      end
    
      def create
        restaurant = Restaurant.new(restaurant_params)
        restaurant.save
        redirect_to restaurants_path
      end
    
      def edit
      end
    
    #   def update
    #     @restaurant.update(restaurant_params)
    #     redirect_to restaurant_path(@restaurant)
    #   end
    
    #   def destroy
    #     @restaurant.destroy
    #     redirect_to restaurants_path
    #   end
    
      private
    
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end
    
      def task_params
        params.require(:restaurant).permit(:name, :address, :category)
      end


end

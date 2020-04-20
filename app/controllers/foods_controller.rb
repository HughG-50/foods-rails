class FoodsController < ApplicationController
    def index
        @foods = Food.all()
    end

    def show 
        @food = Food.find(params["id"])
        # @food = Food.find_by_name(params["name"])
    end

    def create 

    end

    def update 

    end

    def destroy 

    end
end
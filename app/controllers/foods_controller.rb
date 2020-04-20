class FoodsController < ApplicationController
    def index
        @foods = Food.all()
    end

    def show 
        @food = Food.find(params["id"])
        # @food = Food.find_by_name(params["name"])
    end

    def create 
        new_food = Food.create(name: params["name"], calories: params["calories"].to_i)
        redirect_to foods_path
    end

    def update 
        updated_food = Food.update(params["id"], name: params["name"], calories: params["calories"])
        redirect_to food_path(params["id"])
    end

    def destroy 
        destroyed_food = Food.find(params["id"]).destroy 
        redirect_to foods_path
    end

    def new 

    end
end
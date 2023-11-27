class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render json: @cats
    end

    def show
        @cat = Cat.find(params[:id])
        render json: @cat
    end

    def new
        @cat = Cat.new
        render :new
    end

    def edit
        @cat = Cat.find(params[:id])
        render :edit
    end
end

class FunctionsController < ApplicationController
  before_action :set_function, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @functions = Function.all
    respond_with(@functions)
  end

  def show
    respond_with(@function)
  end

  def new
    @function = Function.new
    respond_with(@function)
  end

  def edit
  end

  def create
    @function = Function.new(function_params)
    @function.save
    respond_with(@function)
  end

  def update
    @function.update(function_params)
    respond_with(@function)
  end

  def destroy
    @function.destroy
    respond_with(@function)
  end

  private
    def set_function
      @function = Function.find(params[:id])
    end

    def function_params
      params.require(:function).permit(:name)
    end
end

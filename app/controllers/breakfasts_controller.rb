class BreakfastsController < ApplicationController
  def index
    @breakfasts = Breakfast.all
  end

  def show
    @breakfast = Breakfast.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy
    Breakfast.find(params[:id]).destroy
    redirect_to :action => '/'
  end
  
end

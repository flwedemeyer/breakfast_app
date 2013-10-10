class BreakfastsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def edit
    @breakfast = Breakfast.find(params[:id])
    render 'new'
  end

  def update
    breakfast = Breakfast.find(params[:id])
    breakfast.update_attributes(params[:breakfast])
  end

  def destroy

  end
  
end

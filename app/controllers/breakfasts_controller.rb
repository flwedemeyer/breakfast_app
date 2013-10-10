class BreakfastsController < ApplicationController
  def index
    @breakfasts = Breakfast.all
  end

  def show
    @breakfast = Breakfast.find(params[:id])
  end

  def new
    @breakfast = Breakfast.new
  end

  def create
    @breakfast = Breakfast.new
      if @breakfast.save
        redirect_to action: :show, id: @breakfast.id
      else
        render 'new'
      end

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
    Breakfast.find(params[:id]).destroy
    redirect_to :action => '/'
  end

end


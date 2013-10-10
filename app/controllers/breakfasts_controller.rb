class BreakfastsController < ApplicationController
  def index

  end

  def show

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

  end

  


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

  end

  def update

  end

  def destroy

  end

end


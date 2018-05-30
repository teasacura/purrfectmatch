class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def new
    @cat = Cat.new
  end

  def show
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to @cat
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @cat.update(cat_params)
    if @cat.save
      redirect_to @cat
    else
      render 'edit'
    end
  end

  def destroy
    @cat.delete
    redirect_to profiles
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :email, :password, :password_confirmation, :age, :description, :location, :breed, :temperament, :sociability, :image_url)
  end
end

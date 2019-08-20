class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end
  
  def show
    @chef = Chef.find(params[:id])
  end

  # def new
  #   @chef = Chef.new
  # end

  # def edit
  #   @chef = Chef.find(params[:id])
  # end

  # def create
  #   @chef = Chef.new(chef_params)
  #   if @chef.save
  #     redirect_to chef_path(@chef)
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   @chef = Chef.find(params[:id])
  #   @chef.update(chef_params)
  # end

  # def destroy
  #   @chef = chef.find(params[:id])
  #   @chef.destroy
  #   redirect_to chefs_path
  # end

  private

  def set_chef
    @chef = Chef.find(params[:id])
  end

  def chef_params
    params.require(:chef).permit(:name, :specialty, :rating, :description)
  end
end

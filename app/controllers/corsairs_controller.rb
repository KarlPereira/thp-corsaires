class CorsairsController < ApplicationController
  def new
    @corsairs = Corsair.new
  end

  def create
corsaire = Corsair.create(post_params)
end

  def show
    @corsairs = Corsair.find(params[:id])
  end

  def edit
    @corsairs = Corsair.find(params[:id])
  end

def update
  @corsairs = Corsair.find(params[:id])
  if
  @corsairs.update(post_params)
  flash[:success] = "Welcome to the Sample App!"
  redirect_to corsair_path
else
  render 'new'
end
end

  def destroy
    @corsairs = Corsair.find(params[:id])
    @corsairs.destroy
    redirect_to corsairs_path

  end

  def index
    @corsairs = Corsair.all
  end

private

  def post_params
  params.require(:corsair).permit(:first_name, :age, :slack_handle, :github_handle, :bio)
  end
end

class ListsController < ApplicationController

  def index
  	@user = User.find(current_user)
    @lists = List.where(:user_id => @user.id)
    @list  = List.new
  end

  def create

    @list = List.new(list_params)
    @list.save
    redirect_to lists_path

  end

  private

  def list_params
    params.require(:list).permit(:name, :user_id)
  end

end
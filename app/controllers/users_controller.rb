class UsersController < ApplicationController

    before_action :move_to_imadesho

  def move_to_imadesho
    unless user_signed_in?
    redirect_to '/imadesho'
    end
  end

  def show
    @name = current_user.name
    @hanjas = Hanja.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")

    @discussions = Discussion.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end
end

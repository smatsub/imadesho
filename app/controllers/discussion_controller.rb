class DiscussionController < ApplicationController

  before_action :move_to_imadesho

  def move_to_imadesho
    unless user_signed_in?
    redirect_to '/imadesho'
    end
  end
  
  def list
    @discussions = Discussion.all.order('id DESC')
  end
  
  def mew
    
  end


  def create
    Discussion.create(date:params[:date],title:params[:title],sumjpn:params[:sumjpn],sumkor:params[:sumkor], user_id: current_user.id)
  end

   def destroy
      discussion = Discussion.find(params[:id])
      if discussion.user_id == current_user.id
        discussion.destroy
      end
  end

  def edit
      @discussion = Discussion.find(params[:id])
    end

  def update
      discussion = Discussion.find(params[:id])
      if discussion.user_id == current_user.id
        discussion.update(disc_params)
      end
  end

  private
  def disc_params
    params.permit(:date,:title,:sumjpn,:sumkor)
  end
end

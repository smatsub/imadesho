class HanjaController < ApplicationController

  before_action :move_to_imadesho

  def move_to_imadesho
    unless user_signed_in?
    redirect_to '/imadesho'
    end
  end

  def new
    
  end

  def create
    Hanja.create(day:params[:day],hanjajapanese:params[:hanjajapanese],hanjahiragana:params[:hanjahiragana],hanjakorean:params[:hanjakorean],explanation:params[:explanation], user_id: current_user.id)
  end

  def list
    @hanjas = Hanja.all.order('id DESC')
  end

  def destroy
      hanja = Hanja.find(params[:id])
      if hanja.user_id == current_user.id
        hanja.destroy
      end
  end

  def edit
      @hanja = Hanja.find(params[:id])
    end

def update
      hanja = Hanja.find(params[:id])
      if hanja.user_id == current_user.id
        hanja.update(hanja_params)
      end
    end

 private
 def hanja_params
  params.permit(:day,:hanjajapanese,:hanjahiragana,:hanjakorean,:explanation)
 end
end

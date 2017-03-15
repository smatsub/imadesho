class ImadeshoController < ApplicationController


  def index

  end

  def top
    @hanjas = Hanja.all.order('id DESC').page(params[:page]).per(5)
    @discussions = Discussion.last
  end

end

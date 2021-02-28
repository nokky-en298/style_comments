class StylesController < ApplicationController
  def index
    @styles = Style.includes(:user)
  end

  def new
    @style = Style.new
  end

  def show
    @style = Style.find(params[:id])
  end

  def create
    @style = Style.create(style_params)
    if @style.save
      redirect_to root_path(@style)
    else
      render :new
    end
  end


  private
  def style_params
    params.require(:style).permit(:image, :title, :quality, :item, :remark).merge(user_id: current_user.id)
  end
end

class StylesController < ApplicationController
  before_action :set_style, except: [:index, :new, :create]

  def index
    @styles = Style.includes(:user)
  end

  def new
    @style = Style.new
  end

  def show
  end

  def edit
  end

  def destroy
    @style.destroy
    redirect_to root_path(@style)
  end

  def update
    if @style.update(style_params)
      redirect_to style_path
    else
      render :edit
    end
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

  def set_style
    @style = Style.find(params[:id])
  end
end

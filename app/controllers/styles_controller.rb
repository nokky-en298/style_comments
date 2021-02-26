class StylesController < ApplicationController
  def index
  end


  private
  def style_params
    params.require(:style).permit(:image, :title, :quality, :item, :remark).merge(user_id: current_user.id)
  end
end

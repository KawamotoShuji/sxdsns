class OthersController < ApplicationController
  before_action :set_other, only: [:edit, :update, :destroy,:show]
  def show
    @message = @other.message5s.build
    @messages = @other.message5s
  end
  def new
    @other = Other.new
  end

  def index
    @others = Other.all
    @search = Other.search(params[:search])
  end

  def create
    @other = Other.new(others_params)
    @other.user_id = current_user.id
    if @other.save
      redirect_to others_path, notice: "議題を作成しました！"
    else
      render 'new'
    end
  end

  private
  def others_params
    params.require(:other).permit(:title, :body)
  end
  def set_other
    @other = Other.find(params[:id])
  end
end

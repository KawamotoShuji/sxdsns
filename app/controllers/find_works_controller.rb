class FindWorksController < ApplicationController
  before_action :set_findwork, only: [:edit, :update, :destroy,:show]
  def show
    @message = @findwork.message2s.build
    @messages = @findwork.message2s
  end

  def new
    @findwork = FindWork.new
  end

  def index
    @findworks = FindWork.all
  end

  def create
    @findwork = FindWork.new(findworks_params)
    @findwork.user_id = current_user.id
    if @findwork.save
      redirect_to find_works_path, notice: "議題を作成しました！"
    else
      render 'new'
    end
  end

  private
  def findworks_params
    params.require(:find_work).permit(:title, :body)
  end
  def set_findwork
    @findwork = FindWork.find(params[:id])
  end
end

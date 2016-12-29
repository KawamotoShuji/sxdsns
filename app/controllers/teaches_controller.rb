class TeachesController < ApplicationController
  before_action :set_teach, only: [:edit, :update, :destroy,:show]
  def show
    @message = @teach.message6s.build
    @messages = @teach.message6s
  end
  def new
    @teach = Teach.new
  end

  def index
    @teaches = Teach.all
  end

  def create
    @teach = Teach.new(teaches_params)
    @teach.user_id = current_user.id
    if @teach.save
      redirect_to teaches_path, notice: "議題を作成しました！"
    else
      render 'new'
    end
  end

  private
  def teaches_params
    params.require(:teach).permit(:title, :body)
  end
  def set_teach
    @teach = Teach.find(params[:id])
  end
end

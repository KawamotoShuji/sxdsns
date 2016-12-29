class LabsController < ApplicationController
  before_action :set_lab, only: [:edit, :update, :destroy,:show]
  def show
    @message = @lab.message3s.build
    @messages = @lab.message3s
  end
  def new
    @lab = Lab.new
  end

  def index
    @labs = Lab.all
  end

  def create
    @lab = Lab.new(labs_params)
    @lab.user_id = current_user.id
    if @lab.save
      redirect_to labs_path, notice: "議題を作成しました！"
    else
      render 'new'
    end
  end

  private
  def labs_params
    params.require(:lab).permit(:title, :body)
  end
  def set_lab
    @lab = Lab.find(params[:id])
  end
end

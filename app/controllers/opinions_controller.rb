class OpinionsController < ApplicationController
  before_action :set_opinion, only: [:edit, :update, :destroy,:show]
  def show
    @message = @opinion.message4s.build
    @messages = @opinion.message4s
  end
  def new
    @opinion = Opinion.new
  end

  def index
    @opinions = Opinion.all
    @search = Opinion.search(params[:search])
  end

  def create
    @opinion = Opinion.new(opinions_params)
    @opinion.user_id = current_user.id
    if @opinion.save
      redirect_to opinions_path, notice: "議題を作成しました！"
    else
      render 'new'
    end
  end

  private
  def opinions_params
    params.require(:opinion).permit(:title, :body)
  end
  def set_opinion
    @opinion = Opinion.find(params[:id])
  end
end

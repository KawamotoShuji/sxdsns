class ContentsController < ApplicationController
  before_action :set_content, only: [:edit, :update, :destroy,:show]

    def category
    end

    def show
      @comment = @content.comments.build
      @comments = @content.comments
    end


    def new
      @content = Content.new
    end

    def index
      @contents = Content.where(["channel_id = ?", params[:channel_id]])
    end

    def create
      @content = Content.new(contents_params.merge( { channel_id: params[:channel_id] }))
      @content.user_id = current_user.id
      if @content.save
        redirect_to channel_contents_path, notice: "コンテンツを作成しました！"
      else
        render 'new'
      end
    end

    private
    def contents_params
      params.require(:content).permit(:body, :channel_id,:title)
    end
    def set_content
      @content = Content.find(params[:id])
    end

end

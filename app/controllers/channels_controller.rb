class ChannelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_channel, only: [:edit, :update, :destroy,:show]

    def new
      @channel = Channel.new
    end

    def index
      @channels = Channel.all
    end

    def create
      @channel = Channel.new(channels_params)
      if @channel.save
        redirect_to channels_path, notice: "コンテンツを作成しました！"
      else
        render 'new'
      end
    end

    private
    def channels_params
      params.require(:channel).permit(:title, :body)
    end
    def set_channel
      @channel = Channel.find(params[:id])
    end

end

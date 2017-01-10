class MessagesController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # ログインユーザーに紐付けてインスタンス生成するためbuildメソッドを使用します。
    binding.pry
    @message = current_user.messages.build(message_params)
    @chat = @message.chat

    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @message.save
        format.html { redirect_to chat_path(@chat), notice: 'コメントを投稿しました。' }
        format.json { render :show, status: :created, location: @message }
        # JS形式でレスポンスを返します。
        format.js { render :index }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # ストロングパラメーター
  def message_params
    params.require(:message).permit(:chat_id, :body, :title,:content,:avatar)
  end
end

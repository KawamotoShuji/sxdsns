class Message2sController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # ログインユーザーに紐付けてインスタンス生成するためbuildメソッドを使用します。
    @message = current_user.message2s.build(message_params)
    @findwork = @message.find_work

    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @message.save
        format.html { redirect_to find_work_path(@findwork), notice: 'コメントを投稿しました。' }
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
    params.require(:message2).permit(:find_work_id, :body, :title,:content,:avatar)
  end
end

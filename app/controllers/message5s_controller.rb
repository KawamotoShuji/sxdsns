class Message5sController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # ログインユーザーに紐付けてインスタンス生成するためbuildメソッドを使用します。
    @message = current_user.message5s.build(message_params)
    @other = @message.other

    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @message.save
        format.html { redirect_to other_path(@other), notice: 'コメントを投稿しました。' }
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
    params.require(:message5).permit(:other_id, :body, :title,:content,:avatar)
  end
end

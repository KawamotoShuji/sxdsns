class Message6sController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # ログインユーザーに紐付けてインスタンス生成するためbuildメソッドを使用します。
    @message = current_user.message6s.build(message_params)
    @teach = @message.teach

    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @message.save
        format.html { redirect_to teach_path(@teach), notice: 'コメントを投稿しました。' }
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
    params.require(:message6).permit(:teach_id, :body, :title,:content,:avatar)
  end
end
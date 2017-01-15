class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # ログインユーザーに紐付けてインスタンス生成するためbuildメソッドを使用します。
    @comment = current_user.comments.build(message_params)
    @content = @comment.content

    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save(message_params)
        format.html { redirect_to channel_content_comments_path(@content), notice: 'コメントを投稿しました。' }
        format.json { render :show, status: :created, location: @comment }
        # JS形式でレスポンスを返します。
        format.js { render :index }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # ストロングパラメーター
   def message_params
    params.require(:comment).permit(:content_id,:channel_id, :body, :title,:content,:avatar,:avatar_cache)
   end
end

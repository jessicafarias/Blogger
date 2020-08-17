class CommentsController < ApplicationController
  include CommentsHelper

  # THIS ALSO NEEDS FIXING, UNCOMMENT LINE 5 :D
  before_action :require_login # , except: [:create]

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)
  end

end

class HomeController < ApplicationController
  def index
  end

  def list
    @posts=Post.all
  end

  def show
    @post=Post.find(params[:id])
    # @comments=Comment.where("post_id" => params[:id])
    @comments=@post.comments
  end
  
  def write
    Post.create(title: params[:title], content: params[:content])
    redirect_to "/home/list"
  end
  
  def comment
    comment=Comment.new
    comment.body=params[:body]
    comment.post_id=params[:id]
    comment.save
    
    # redirect_to "/home/show/"+params[:id]
    redirect_to :back
  end
end

class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def show
        #게시글 상세보기
        @post = Post.find(params[:id])
        @comments = @post.comments
    end
    
    def new
    # 작성하기 위해 폼을 제공해주는 부분
    end
    
    def create
        #실제 디비에 저장되는 프로세스
        post = Post.new #하나의 게시글을 새로 만들거야
        post.title = params[:post_title]
        post.content = params[:post_content]
        post.save
        
        redirect_to '/'
    end
    
    def destroy
        post=Post.find(params[:id])
        post.destroy!
        
        redirect_to '/'
    end
        
end

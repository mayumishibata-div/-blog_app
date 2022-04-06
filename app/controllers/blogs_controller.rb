class BlogsController < ApplicationController
    
    def index
        @blogs = Blog.all
    end 
    
    def new
        @blog = Blog.new
    end 
    
    def create
        Blog.create(blog_params)
    end 
    
    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        redirect_to action: :index
        
    end
    
    private
    def blog_params
        params.require(:blog).permit(:text)
    end 
    
    def move_to_index
        redirect_to action: :index
    end 
end

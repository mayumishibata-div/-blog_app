class BlogsController < ApplicationController
    before_action :set_blog, only: [:edti, :show]
    
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
    
    def edit
        # @blog = Blog.find(params[:id])
    end 
    
    def update
        blog = Blog.find(params[:id])
        blog.update(blog_params)
        redirect_to action: :index
    end 
    
    def show
        # @blog = Blog.find(params[:id])
    end 
    
    private
    def blog_params
        params.require(:blog).permit(:text)
    end 
    
    def move_to_index
        redirect_to action: :index
    end 
    
    def set_blog
        @blog = Blog.find(params[:id])
end

class BlogsController < ApplicationController
    before_action :set_blog, only: [:edti, :show]
    before_action :move_to_index, except: [:index, :show]
    def index
        @blogs = Blog.all
    end 
    
    def new
        @blog = Blog.new
    end 
    
    def create
        Blog.create(blog_params)
        redirect_to action: :index
    end 
    
    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        redirect_to action: :index
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end 
    
    def update
        blog = Blog.find(params[:id])
        blog.update(blog_params)
        redirect_to action: :index
    end 
    
    def show
        # @blog = Blog.find(params[:id])
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
    
    def set_blog
        @blog = Blog.find(params[:id])
    end
    
    def move_to_index
        unless user_signed_in?
            redirect_to action: :index
        end 
    end 
end

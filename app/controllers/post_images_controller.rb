class PostImagesController < ApplicationController
    
 def new
  @post_image = PostImage.new
 end
 
 def create
  @post_image = PostImage.new(post_image_params)
  @psot_image.user.id = current_user.id
  @post_image.save
  redirect_to post_image_path
 end

 def index
　@post_images = PostImage.all
  
 end
 
 def show
  
 end
 
 def destroy 
  
 end
 
 private
 
 def post_image_params
  params.require(:post_image).permit(:shop_name, :image, :caption)
 end
 
end

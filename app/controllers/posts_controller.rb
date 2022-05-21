class PostsController < ApplicationController
  
    def new
      @post = Post.new 
    end
  
    def create
      @post = Post.new
      @post["title"] = params["post"]["title"]
      @post["description"] = params["post"]["description"]
      @post["posted_on"] = params["post"]["posted_on"]
      @city = Place.find_by({ "name" => params["post"]["place"] })
      @post["place_id"] = @city["id"]
      @post.save
      redirect_to "/places" 
    end
  
  end
  
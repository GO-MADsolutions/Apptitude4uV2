class TimeandworksController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test]

 def new 
 end

 def formula
 end

 def problems

   @posts = Age.paginate(:page => params[:page], :per_page => 2)
 end

 

 def test
 end
 
 def show
 @post = Age.find(params[:id])
 end

 def index
 end

 def create
 @post = Age.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Age.find(params[:id])
 end
 
 def update
 @post = Age.find(params[:id])
 if @post.update(params[:age].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Age.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

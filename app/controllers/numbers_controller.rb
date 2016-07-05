class NumbersController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
 end

 def formula
 end

 def problems

   @posts = Number.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Number.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Number Test", numbers_test_url
 

end
 def show
 @post = Number.find(params[:id])
 end

 def index
 end

 def create
 @post = Number.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Number.find(params[:id])
 end
 
 def update
 @post = Number.find(params[:id])
 if @post.update(params[:number].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Number.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

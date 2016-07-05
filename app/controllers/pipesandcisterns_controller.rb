class PipesandcisternsController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
 end

 def formula
 end

 def problems

   @posts = Pipesandcistern.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Pipesandcistern.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Pipes And Cistern Test", pipesandcisterns_test_url
 

end
 
 def show
 @post = Pipesandcistern.find(params[:id])
 end

 def index
 end

 def create
 @post = Pipesandcistern.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Pipesandcistern.find(params[:id])
 end
 
 def update
 @post = Pipesandcistern.find(params[:id])
 if @post.update(params[:pipesandcistern].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Pipesandcistern.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

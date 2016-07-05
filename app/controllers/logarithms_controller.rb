class LogarithmsController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
 end

 def formula
 end

 def problems

   @posts = Logarithm.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Logarithm.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Logarithm Test", logarithms_test_url
 

end
 
 def show
 @post = Logarithm.find(params[:id])
 end

 def index
 end

 def create
 @post = Logarithm.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Logarithm.find(params[:id])
 end
 
 def update
 @post = Logarithm.find(params[:id])
 if @post.update(params[:logarithm].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Logarithm.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

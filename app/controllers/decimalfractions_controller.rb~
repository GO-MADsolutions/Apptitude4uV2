class DecimalfractionsController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test]

 def new 
 end

 def formula
 end

 def problems

   @posts = Decimalfraction.paginate(:page => params[:page], :per_page => 2)
 end

 

 def test
 end
 
 def show
 @post = Decimalfraction.find(params[:id])
 end

 def index
 end

 def create
 @post = Decimalfraction.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Decimalfraction.find(params[:id])
 end
 
 def update
 @post = Decimalfraction.find(params[:id])
 if @post.update(params[:decimalfraction].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Decimalfraction.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

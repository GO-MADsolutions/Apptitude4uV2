class MixtureandalligationsController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test]

 def new 
 end

 def formula
 end

 def problems

   @posts = Mixtureandalligation.paginate(:page => params[:page], :per_page => 2)
 end

 

 def test
 end
 
 def show
 @post = Mixtureandalligation.find(params[:id])
 end

 def index
 end

 def create
 @post = Mixtureandalligation.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Mixtureandalligation.find(params[:id])
 end
 
 def update
 @post = Mixtureandalligation.find(params[:id])
 if @post.update(params[:mixtureandalligation].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Mixtureandalligation.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

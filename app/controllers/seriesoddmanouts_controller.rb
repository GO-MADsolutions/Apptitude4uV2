class SeriesoddmanoutsController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test]

 def new 
 end

 def formula
 end

 def problems

   @posts = Seriesoddmanout.paginate(:page => params[:page], :per_page => 2)
 end

 

 def test
 end
 
 def show
 @post = Seriesoddmanout.find(params[:id])
 end

 def index
 end

 def create
 @post = Seriesoddmanout.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Seriesoddmanout.find(params[:id])
 end
 
 def update
 @post = Seriesoddmanout.find(params[:id])
 if @post.update(params[:seriesoddmanout].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Seriesoddmanout.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

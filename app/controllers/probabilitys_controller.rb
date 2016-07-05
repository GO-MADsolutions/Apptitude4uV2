class ProbabilitysController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
 end

 def formula
 end

 def problems

   @posts = Probability.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Probability.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Probability Test", probabilitys_test_url
 

end
 
 def show
 @post = Probability.find(params[:id])
 end

 def index
 end

 def create
 @post = Probability.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Probability.find(params[:id])
 end
 
 def update
 @post = Probability.find(params[:id])
 if @post.update(params[:probability].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Probability.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

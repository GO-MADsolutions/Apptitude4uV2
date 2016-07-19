class SimpleinterestsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Simple Interest", :simpleinterests_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_simpleinterest_url
 end

 def formula
add_breadcrumb "Formula", simpleinterests_formula_url
 end

 def problems
add_breadcrumb "problems", simpleinterests_problems_url
   @posts = Simpleinterest.paginate(:page => params[:page], :per_page => 2)
 end

 

def getfortest
  render :json => Simpleinterest.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Simple Interest Test", simpleinterests_test_url
 

end
 
 def show
 @post = Simpleinterest.find(params[:id])
 end

 def index
 end

 def create
 @post = Simpleinterest.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_simpleinterest_url
 @post = Simpleinterest.find(params[:id])
 end
 
 def update
 @post = Simpleinterest.find(params[:id])
 if @post.update(params[:simpleinterest].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Simpleinterest.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

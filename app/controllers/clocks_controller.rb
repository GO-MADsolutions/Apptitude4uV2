class ClocksController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Clocks", :clocks_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "Create", new_clock_url
 end

 def formula
add_breadcrumb "formula", clocks_formula_url

 end

 def problems

add_breadcrumb "problem", clocks_problems_url
   @posts = Clock.paginate(:page => params[:page], :per_page => 2)
 end

 
 def getfortest
  render :json => Clock.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "test", clocks_test_url
 

end
 
 def show
 @post = Clock.find(params[:id])
 end

 def index
 end

 def create
 @post = Clock.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit Problem", edit_clock_url
 @post = Clock.find(params[:id])
 end
 
 def update
 @post = Clock.find(params[:id])
 if @post.update(params[:clock].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Clock.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

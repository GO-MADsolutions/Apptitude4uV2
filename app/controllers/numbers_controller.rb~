class NumbersController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Numbers", :numbers_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "Create", new_number_url
 end

 def formula
add_breadcrumb "formula", numbers_formula_url
 end

 def problems
add_breadcrumb "problem", numbers_problems_url
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
add_breadcrumb "edit Problem", edit_number_url
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

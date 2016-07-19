class PartnershipsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Partnerships", :partnerships_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_partnership_url
 end

 def formula
add_breadcrumb "formula", partnership_formula_url
 end

 def problems
add_breadcrumb "problem", partnerships_problem_url
   @posts = Partnership.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Partnership.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "partnership Test", partnerships_test_url
 

end
 
 def show
 @post = Partnership.find(params[:id])
 end

 def index
 end

 def create
 @post = Partnership.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit Problem", edit_partnership_url
 @post = Partnership.find(params[:id])
 end
 
 def update
 @post = Partnership.find(params[:id])
 if @post.update(params[:partnership].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Partnership.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

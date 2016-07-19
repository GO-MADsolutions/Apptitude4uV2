class SimplificationsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Simplification", :simplifications_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_simplification_url
 end

 def formula
add_breadcrumb "Formula", simplifications_formula_url
 end

 def problems
add_breadcrumb "problems", simplifications_problems_url
   @posts = Simplification.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Simplification.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Simplification Test", simplifications_test_url
 

end
 def show
 @post = Simplification.find(params[:id])
 end

 def index
 end

 def create
 @post = Simplification.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_simplification_url
 @post = Simplification.find(params[:id])
 end
 
 def update
 @post = Simplification.find(params[:id])
 if @post.update(params[:simplification].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Simplification.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

class CompoundinterestsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Compound Interest", :compoundinterests_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "New", new_compoundinterest_url
 end

 def formula
add_breadcrumb "Formula", compoundinterests_formula_url
 end

 def problems
add_breadcrumb "Problem", compoundinterests_formula_url
   @posts = Compoundinterest.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Compoundinterest.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Compound Interest Test", compoundinterests_test_url
 

end
 
 def show
 @post = Compoundinterest.find(params[:id])
 end

 def index
 end

 def create
 @post = Compoundinterest.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit Problem", edit_compoundinterest_url
 @post = Compoundinterest.find(params[:id])
 end
 
 def update
 @post = Compoundinterest.find(params[:id])
 if @post.update(params[:compoundinterest].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Compoundinterest.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

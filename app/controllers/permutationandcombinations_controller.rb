class PermutationandcombinationsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Permutation And Combinations ", :permutationandcombinations_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_permutationandcombination_url
 end

 def formula
add_breadcrumb "formula", permutationandcombinations_formula_url
 end

 def problems
add_breadcrumb "problems", permutationandcombinations_problems_url
   @posts = Permutationandcombination.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Permutationandcombination.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "permutation And Combination Test", permutationandcombinations_test_url
 

end
 
 def show
 @post = Permutationandcombination.find(params[:id])
 end

 def index
 end

 def create
 @post = Permutationandcombination.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_permutationandcombination_url
 @post = Permutationandcombination.find(params[:id])
 end
 
 def update
 @post = Permutationandcombination.find(params[:id])
 if @post.update(params[:permutationandcombination].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Permutationandcombination.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end


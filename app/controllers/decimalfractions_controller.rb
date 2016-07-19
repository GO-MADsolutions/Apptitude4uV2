class DecimalfractionsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Decimal Fraction", :decimalfractions_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
add_breadcrumb "Create", new_decimalfraction_url 
 end

 def formula
add_breadcrumb "formula", decimalfractions_formula_url
 end

 def problems
add_breadcrumb "Problems", decimalfractions_problem_url
   @posts = Decimalfraction.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Decimalfraction.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Decimal Fraction Test", decimalfractions_test_url
 

end
 
 def show
 @post = Decimalfraction.find(params[:id])
 end

 def index
 end

 def create
 @post = Decimalfraction.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit Problem", edit_decimalfraction_url
 @post = Decimalfraction.find(params[:id])
 end
 
 def update
 @post = Decimalfraction.find(params[:id])
 if @post.update(params[:decimalfraction].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Decimalfraction.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

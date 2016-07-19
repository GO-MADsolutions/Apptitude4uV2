class HeightanddistancesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Height And Distances", :heightanddistances_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "Create", new_heightanddistance_url
 end

 def formula
add_breadcrumb "formula", heightanddistances_formula_url
 end

 def problems
add_breadcrumb "problem", heightanddistances_problems_url
   @posts = Heightanddistance.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Heightanddistance.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Height And Distance Test", heightanddistances_test_url
 

end
 def show
 @post = Heightanddistance.find(params[:id])
 end

 def index
 end

 def create
 @post = Heightanddistance.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit Problem", edit_decimalfraction_url
 @post = Heightanddistance.find(params[:id])
 end
 
 def update
 @post = Heightanddistance.find(params[:id])
 if @post.update(params[:heightanddistance].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Heightanddistance.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

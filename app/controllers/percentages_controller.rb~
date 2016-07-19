class PercentagesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Percentages", :percentages_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
add_breadcrumb "create", new_percentage_url 
 end

 def formula
add_breadcrumb "formula", percentage_formula_url
 end

 def problems
add_breadcrumb "problems", percentages_problems_url
   @posts = Percentage.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Percentage.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Percentage Test", percentages_test_url
 

end
 
 def show
 @post = Percentage.find(params[:id])
 end

 def index
 end

 def create
 @post = Percentage.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit Problem", edit_percentage_url
 @post = Percentage.find(params[:id])
 end
 
 def update
 @post = Percentage.find(params[:id])
 if @post.update(params[:percentage].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Percentage.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

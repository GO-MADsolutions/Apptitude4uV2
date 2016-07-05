class AveragesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Average", :averages_url

before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
 add_breadcrumb "Create", new_average_url
 end

 def formula 
 add_breadcrumb "formula", averages_formula_url
 end

 def problems
 @posts = Average.paginate(:page => params[:page], :per_page => 2)
  add_breadcrumb "problems", averages_problems_url

 end

 
 def getfortest
  render :json => Average.limit(5).order('RANDOM()')
 end
 def test
add_breadcrumb "Average Test", averages_test_url
 end
 
 def show
 @post = Average.find(params[:id])
 end

 def index
 end

 def create
 @post = Average.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Average.find(params[:id])
 add_breadcrumb "Edit", edit_average_url
 end
 
 def update
 @post = Average.find(params[:id])
 if @post.update(params[:average].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Average.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

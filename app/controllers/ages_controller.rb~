class AgesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Age", :ages_url



before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
  add_breadcrumb "Create", new_age_url
 end

 def formula
 add_breadcrumb "formula", ages_formula_url
 end

 def problems

   @posts = Age.paginate(:page => params[:page], :per_page => 5)
   add_breadcrumb "Age Problems", ages_problems_url
 end

 def getfortest
  render :json => Age.limit(5).order('RANDOM()')
 end

def test

add_breadcrumb "Age Test", ages_test_url

end
 
 def show
 @post = Age.find(params[:id])
 end

 def index
 end

 def create
 @post = Age.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Age.find(params[:id])
add_breadcrumb "Edit Problem", edit_age_url
 end
 
 def update
 @post = Age.find(params[:id])
 if @post.update(params[:age].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Age.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

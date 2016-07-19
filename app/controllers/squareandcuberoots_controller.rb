class SquareandcuberootsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Square And Cube Root", :squareandcuberoots_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
add_breadcrumb "create", new_squareandcuberoot_url 
 end

 def formula
add_breadcrumb "Formula", squareandcuberoots_formula_url
 end

 def problems
add_breadcrumb "problems", squareandcuberoots_probelms_url
   @posts = Squareandcuberoot.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Squareandcuberoot.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Square And Cuberoot Test", squareandcuberoots_test_url
 

end
 
 def show
 @post = Squareandcuberoot.find(params[:id])
 end

 def index
 end

 def create
 @post = Squareandcuberoot.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_squareandcuberoot_url
 @post = Squareandcuberoot.find(params[:id])
 end
 
 def update
 @post = Squareandcuberoot.find(params[:id])
 if @post.update(params[:squareandcuberoot].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Squareandcuberoot.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

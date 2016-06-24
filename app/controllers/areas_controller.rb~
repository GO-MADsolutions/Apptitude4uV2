class AreasController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Area", :areas_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test]

 def new
 add_breadcrumb "Create", new_area_url 
 end

 def formula
 add_breadcrumb "Formula", areas_formula_url
 end

 def problems

   @posts = Area.paginate(:page => params[:page], :per_page => 2)
 add_breadcrumb "Area problems", areas_problems_url
 end

 

 def test
 end
 
 def show
 @post = Area.find(params[:id])
 end

 def index
 end

 def create
 @post = Area.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Area.find(params[:id])
 add_breadcrumb "edit", edit_area_url
 end
 
 def update
 @post = Area.find(params[:id])
 if @post.update(params[:area].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Area.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

class SurdsandindicesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Surds And Indices", :surdsandindices_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_surdsandindice_url
 end

 def formula
add_breadcrumb "Formula", surdsandindices_formula_url
 end

 def problems
add_breadcrumb "problems", surdsandindices_prolems_url
   @posts = Surdsandindice.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Surdsandindice.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Surds And Indice Test", surdsandindices_test_url
 

end
 
 
 def show
 @post = Surdsandindice.find(params[:id])
 end

 def index
 end

 def create
 @post = Surdsandindice.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_surdsandindice_url
 @post = Surdsandindice.find(params[:id])
 end
 
 def update
 @post = Surdsandindice.find(params[:id])
 if @post.update(params[:surdsandindice].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Surdsandindice.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

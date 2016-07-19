class SeriesfindmissingnumbersController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Series Find Missing Numbers", :seriesfindmissingnumbers_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "Create", new_seriesfindmissingnumber_url
 end

 def formula
add_breadcrumb "Formula", seriesfindmissingnumbers_formula_url
 end

 def problems
add_breadcrumb "problem", seriesfindmissingnumbers_problems_url
   @posts = Seriesfindmissingnumber.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Seriesfindmissingnumber.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Series Find Missing Number Test", seriesfindmissingnumbers_test_url
 

end
 
 def show
 @post = Seriesfindmissingnumber.find(params[:id])
 end

 def index
 end

 def create
 @post = Seriesfindmissingnumber.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_seriesfindmissingnumber_url
 @post = Seriesfindmissingnumber.find(params[:id])
 end
 
 def update
 @post = Seriesfindmissingnumber.find(params[:id])
 if @post.update(params[:seriesfindmissingnumber].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Seriesfindmissingnumber.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

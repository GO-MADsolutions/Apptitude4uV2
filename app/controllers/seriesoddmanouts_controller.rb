class SeriesoddmanoutsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Series Odd Man Out", :seriesoddmanouts_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create",new_seriesoddmanout_url
 end

 def formula
add_breadcrumb "Formula", seriesoddmanouts_formula_url
 end

 def problems
add_breadcrumb "problem", seriesoddmanouts_problems_url
   @posts = Seriesoddmanout.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Seriesoddmanout.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Series Odd Man Out Test", seriesoddmanouts_test_url
 

end
 def show
 @post = Seriesoddmanout.find(params[:id])
 end

 def index
 end

 def create
 @post = Seriesoddmanout.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_seriesoddmanout_url
 @post = Seriesoddmanout.find(params[:id])
 end
 
 def update
 @post = Seriesoddmanout.find(params[:id])
 if @post.update(params[:seriesoddmanout].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Seriesoddmanout.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

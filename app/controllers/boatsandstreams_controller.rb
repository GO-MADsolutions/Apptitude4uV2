class BoatsandstreamsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Boats and Streams", :boatsandstreams_url

before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "Create", new_boatsandstream_url  
 end

 def formula
add_breadcrumb "Formula", boatsandstreams_formula_url  
 end

 def problems
add_breadcrumb "Problem", boatsandstreams_problems_url  

   @posts = Boatsandstream.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Boatsandstream.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Boats And Stream Test", boatsandstreams_test_url
 

end
 def show
 @post = Boatsandstream.find(params[:id])
 end

 def index
 end

 def create
 @post = Boatsandstream.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit", edit_bankersdiscount_url  
 @post = Boatsandstream.find(params[:id])
 end
 
 def update
 @post = Boatsandstream.find(params[:id])
 if @post.update(params[:boatsandstream].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Boatsandstream.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

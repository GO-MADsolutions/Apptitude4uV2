class TimeandworksController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Time And Work", :timeandworks_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_timeandwork_url
 end

 def formula
add_breadcrumb "Formula", timeandworks_formula_url
 end

 def problems
add_breadcrumb "problems", timeandworks_problems_url
   @posts = Timeandwork.paginate(:page => params[:page], :per_page => 2)
 end

 

def getfortest
  render :json => Timeandwork.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Time And Work", timeandworks_test_url
 

end
 
 def show
 @post = Timeandwork.find(params[:id])
 end

 def index
 end

 def create
 @post = Timeandwork.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_timeandwork_url
 @post = Timeandwork.find(params[:id])
 end
 
 def update
 @post = Timeandwork.find(params[:id])
 if @post.update(params[:timeandwork].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Timeandwork.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

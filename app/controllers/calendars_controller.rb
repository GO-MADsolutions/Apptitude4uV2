class CalendarsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Calendars", :calendars_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
add_breadcrumb "Create", new_calendar_url  
 end

 def formula
add_breadcrumb "Formula", calendars_formula_url 
 end

 def problems
add_breadcrumb "Problem", calendars_problems_url 

   @posts = Calendar.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Calendar.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Calendar Test", calendars_test_url
 

end
 
 def show
 @post = Calendar.find(params[:id])
 end

 def index
 end

 def create
 @post = Calendar.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit", edit_calendar_url 
 @post = Calendar.find(params[:id])
 end
 
 def update
 @post = Calendar.find(params[:id])
 if @post.update(params[:calendar].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Calendar.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

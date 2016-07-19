class TimeanddistancesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Time And Distance", :timeanddistances_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_timeanddistance_url
 end

 def formula
add_breadcrumb "Formula", timeanddistances_formula_url
 end

 def problems
add_breadcrumb "problems", timeanddistances_problems_url
   @posts = Timeanddistance.paginate(:page => params[:page], :per_page => 2)
 end

 

def getfortest
  render :json => Timeanddistance.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Time And Distance", timeanddistances_test_url
 

end
 
 def show
 @post = Timeanddistance.find(params[:id])
 end

 def index
 end

 def create
 @post = Timeanddistance.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_timeanddistance_url
 @post = Timeanddistance.find(params[:id])
 end
 
 def update
 @post = Timeanddistance.find(params[:id])
 if @post.update(params[:timeanddistance].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Timeanddistance.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

class ProfitandlossController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "profitandloss", :profitandloss_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "create", new_profitandloss_url
 end

 def formula
add_breadcrumb "formula", profitandloss_formula_url
 end

 def problems
add_breadcrumb "problem", profitandloss_problems_url
   @posts =  Profitandloss.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Profitandloss.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Profit And Loss Test", profitandloss_test_url
 

end
 
 def show
 @post =  Profitandloss.find(params[:id])
 end

 def index
 end

 def create
 @post =  Profitandloss.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit Problem", edit_profitandloss_url
 @post =  Profitandloss.find(params[:id])
 end
 
 def update
 @post = Profitandloss.find(params[:id])
 if @post.update(params[:profitandloss].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post =  Profitandloss.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

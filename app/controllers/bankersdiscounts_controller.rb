class BankersdiscountsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Bankers Discount", :bankersdiscounts_url

before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
add_breadcrumb "Create", new_bankersdiscount_url  
 end

 def formula
add_breadcrumb "formula", bankersdiscounts_formula_url 
 end

 def problems
add_breadcrumb "problem", bankersdiscounts_problems_url 

   @posts = Bankersdiscount.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Bankersdiscount.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Bankers Discount Test", bankersdicounts_test_url
 

end
 def show
 @post = Bankersdiscount.find(params[:id])
 end

 def index
 end

 def create
 @post = Bankersdiscount.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit", edit_bankersdiscount_url 
 @post = Bankersdiscount.find(params[:id])
 end
 
 def update
 @post = Bankersdiscount.find(params[:id])
 if @post.update(params[:bankersdiscount].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Bankersdiscount.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :opdtionD, :answer)
  end
end

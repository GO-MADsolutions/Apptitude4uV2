class StocksandsharesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Stocks And Shares", :stocksandshares_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
add_breadcrumb "create", new_stocksandshare_url 
 end

 def formula
add_breadcrumb "Formula", stocksandshares_formula_url
 end

 def problems
add_breadcrumb "problem", stockandshares_problems_url
   @posts = Stocksandshare.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Stocksandshare.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Stocks And Share Test", stocksandshares_test_url
 

end
 
 
 def show
 @post = Age.find(params[:id])
 end

 def index
 end

 def create
 @post = Age.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_stockandshare_url
 @post = Age.find(params[:id])
 end
 
 def update
 @post = Age.find(params[:id])
 if @post.update(params[:age].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Age.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

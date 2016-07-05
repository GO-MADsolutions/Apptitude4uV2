class ChainrulesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Chain Rules", :chainrules_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
 add_breadcrumb "Create", new_chainrule_url 
 end

 def formula
 add_breadcrumb "Formula", chainrules_formula_url
 end

 def problems
 add_breadcrumb "problems", chainrules_problems_url

   @posts = Chainrule.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Chainrule.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Chainrule Test", chainrules_test_url
 

end
 
 def show
 @post = Chainrule.find(params[:id])
 end

 def index
 end

 def create
 @post = Chainrule.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 add_breadcrumb "Edit", edit_chainrule_url
 @post = Chainrule.find(params[:id])
 end
 
 def update
 @post = Chainrule.find(params[:id])
 if @post.update(params[:chainrule].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Chainrule.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

class HcfandlcmsController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Hcf And Lcms", :hcfandlcms_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
add_breadcrumb "Create", new_hcfandlcm_url
 end

 def formula
add_breadcrumb "formula", hcfandlcms_formula_url
 end

 def problems
add_breadcrumb "Problem", hcfandlcms_problems_url

   @posts = Hcfandlcm.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Hcfandlcm.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Hcf And Lcm Test", hcfandlcms_test_url
 

end
 
 def show
 @post = Hcfandlcm.find(params[:id])
 end

 def index
 end

 def create
 @post = Hcfandlcm.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_hcfandlcm_url
 @post = Hcfandlcm.find(params[:id])
 end
 
 def update
 @post = Hcfandlcm.find(params[:id])
 if @post.update(params[:hcfandlcm].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Hcfandlcm.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end

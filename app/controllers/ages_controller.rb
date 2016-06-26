class AgesController < BasControllerController

skip_before_filter :verify_authenticity_token
  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers
  skip_before_filter :verify_authenticity_token
  # For all responses in this controller, return the CORS access control headers.
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
        headers['Access-Control-Max-Age'] = "1728000"
  end

  # If this is a preflight OPTIONS request, then short-circuit the
  # request, return only the necessary headers and return an empty
  # text/plain.

  def cors_preflight_check
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
        headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
        headers['Access-Control-Max-Age'] = '1728000'
  end



add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Age", :ages_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]





 def new 
  add_breadcrumb "Create", new_age_url
 end
 def demoreq

 end
 def formula
 add_breadcrumb "formula", ages_formula_url
 end

 def problems

   @posts = Age.paginate(:page => params[:page], :per_page => 5)
   add_breadcrumb "Age Problems", ages_problems_url
 end

 def getfortest
  render :json => Age.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Age Test", ages_test_url
 #redirect_to :back

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
 @post = Age.find(params[:id])
add_breadcrumb "Edit Problem", edit_age_url
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

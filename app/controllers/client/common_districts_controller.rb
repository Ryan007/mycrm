# encoding: utf-8
class Client::CommonDistrictsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource

  def index
  	@common_districts = CommonDistrict.paginate(:page => params[:page], :per_page => 20)
  end
  
end
# encoding: utf-8
class Admin::AnalyticController < Admin::BaseController
  before_filter :authenticate_user!
  # # 两种验证方式 前面会加载model 后面的不会加载model
  # load_and_authorize_resource

  def index
  end

  # callcenter 数据统计首页
 	def callcenter
		if params[:start_date] && params[:end_date]
	        @t = DateTime.strptime(params[:start_date] + " CCT", "%Y-%m-%d")
	        @t1 = DateTime.strptime(params[:end_date] + " CCT", "%Y-%m-%d")
	        @time = @t.strftime("%Y-%m-%d")
	        @time1 = @t1.strftime("%Y-%m-%d")
	        @time_range = @t..(@t1 + 1.day)
	    else
	    	@time_range = (Time.now.midnight )..(Time.now.midnight + 1.day)
	    end
	    # @users = Role.find(7).users.where('created_at' => time_range).paginate(:page => params[:page], :per_page => 20)
	    @users = Role.find(7).users.paginate(:page => params[:page], :per_page => 20)
	    @info_count = Info.where('call_id IS NOT NULL').where('created_at' => @time_range).count
	    @call_count = Info.where('call_id IS NOT NULL and source = 1').where('created_at' => @time_range).count
	    @called_count = Info.where('call_id IS NOT NULL and source = 2').where('created_at' => @time_range).count
	    @leyo_count = Info.where('call_id IS NOT NULL and source = 3').where('created_at' => @time_range).count
	end

	# cc数据管理
	def cc
		if params[:start_date] && params[:end_date]
	        @t = DateTime.strptime(params[:start_date] + " CCT", "%Y-%m-%d")
	        @t1 = DateTime.strptime(params[:end_date] + " CCT", "%Y-%m-%d")
	        @time = @t.strftime("%Y-%m-%d")
	        @time1 = @t1.strftime("%Y-%m-%d")
	        @time_range = @t..(@t1 + 1.day)
	    else
	    	@time_range = (Time.now.midnight - 1.day)..Time.now.midnight
	    end
		@ccs = Role.find(3).users.paginate(:page => params[:page], :per_page => 20)
		@count_invations = Invation.where(" cc_id is NOT NULL").where('created_at' => @time_range).count
	end

end

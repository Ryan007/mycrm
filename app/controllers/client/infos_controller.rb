# encoding: utf-8
class Client::InfosController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource
  

  def index
    # @infos = Info.find_by_sql("select a.*, b.* from infos a, invations b where a.id=b.info_id  order by a.created_at DESC").to_a.paginate(:page => params[:page], :per_page => 20)
    @ccs = Role.find(3).users
    if current_user.roles.include?(Role.find(1)) || current_user.roles.include?(Role.find(4)) || current_user.roles.include?(Role.find(5))
      @infos = Info.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
    end
  end

  # 渠道人员添加的客户信息
  def channel_add_info
    @role = Role.find(2)
    @channels = @role.users
    @info = Info.new
  end

  # callcenter添加的客户信息
  def callcenter_add_info
    @info = Info.new
  end

  def channel_my
    if current_user.roles.include?(Role.find(8))
      @infos = Info.where("channel_category_id IS NOT NULL").order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
    else
      @channel = ChannelInfo.find_by_user_id(current_user.id)
      @infos = @channel.infos.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
    end
  end

  def show
    # 如果是管理员 能够访问所有的客户信息
    if current_user.roles.include?(Role.find(1)) || current_user.roles.include?(Role.find(4))
      @info = Info.find(params[:id])
    elsif current_user.roles.include?(Role.find(3)) && Info.where(:cc_id => current_user.id).include?(Info.find(params[:id]))
      @info = Info.find(params[:id])
    else
      flash[:notice] = '对不起，您不能访问！'
      redirect_to cc_my_client_infos_url
    end 
  end

  def new
    @role = Role.find(3)
    @ccs = @role.users
    @info = Info.new
  end

  def edit
    @role = Role.find(3)
    @ccs = @role.users

    @info = Info.find(params[:id])
  end

  def create
    @roles = current_user.roles
    
    if params[:info]["is_signed"].nil?
      params[:info]["is_signed"] = 2
    end

    if @roles.include?(Role.find(3))
      params[:info]["cc_id"] = current_user.id
    end

    @info = Info.new(params[:info])
    
    respond_to do |format|
      if @roles.include?(Role.find(2))
        # 如果渠道用户存在，冗余保存渠道类别
        params[:info]["channel_category_id"] = ChannelInfo.find(params[:info]["channel_info_id"]).channel_category_id
       
        if @info.save
          format.html { redirect_to channel_my_client_infos_path, notice: '添加客户成功！' }
        else
          format.html { redirect_to channel_add_info_client_infos_path, notice: '没有输入用户名,用户电话或电话重复，请重新添加！' }
        end
      elsif @roles.include?(Role.find(7))
        if @info.save
          format.html { redirect_to callcenter_index_client_infos_path, notice: '添加客户成功！' }
        else
          format.html { redirect_to callcenter_add_info_client_infos_path, notice: '没有输入用户名,用户电话或电话重复，请重新添加！' }
        end
      elsif @roles.include?(Role.find(3))
        if @info.save
          format.html { redirect_to cc_my_client_infos_path, notice: '添加客户成功！' }
        else
          format.html { redirect_to :back, notice: '没有输入用户名,用户电话或电话重复，请重新添加！' }
        end
      else
        if @info.save
          format.html { redirect_to client_info_path(@info), notice: '添加客户成功！' }
        else
          format.html { redirect_to new_client_info_path, notice: '没有输入用户名,用户电话或电话重复，请重新添加！' }
        end
      end
    end

  end

  def update
        # 如果渠道用户存在，冗余保存渠道类别
    if !params[:info]["channel_info_id"].empty?
      params[:info]["channel_category_id"] = ChannelInfo.find(params[:info]["channel_info_id"]).channel_category_id
    end

    if params[:info]["is_signed"].nil?
      params[:info]["is_signed"] = 2
    end

    if params[:info]["is_trained"].empty?
      params[:info]["is_trained"] = 2
    end

    if params[:info]["is_examed"].empty?
      params[:info]["is_examed"] = 2
    end

    @info = Info.find(params[:id])

    respond_to do |format|
      if @info.update_attributes(params[:info])
        format.html { redirect_to client_infos_path, notice: '更新客户信息成功！' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy

    respond_to do |format|
      format.html { redirect_to client_infos_url }
      format.json { head :no_content }
    end
  end
  # 查看出所有预约
  def invit_index
    time_range = Time.now.midnight..(Time.now.midnight + 1.day)
    @invations = Invation.where("invit_time" => time_range).paginate(:page => params[:page], :per_page => 20)
  end

  # 预约搜索结果
  def invit_search
    @start = params[:start_time]
    @end = params[:end_time]
    @status = params[:status]
    @role = params[:role]

    conditions = " 1=1 "
    if !@status.nil?
      conditions = conditions + " and status = #{@status} "
    end

    if !@role.nil?
      conditions = conditions + " and role_id = #{@role}"
    end


    if !@start.empty? && !@end.empty?
      time_range = @start.to_datetime.midnight..(@end.to_datetime + 1.day)
      @invations = Invation.where("invit_time" => time_range).where(conditions).paginate(:page => params[:page], :per_page => 20)      
    elsif !@start.empty? && @end.empty?
      time_range = @start.to_datetime.midnight..(@start.to_datetime + 1.day)
      @invations = Invation.where("invit_time" => time_range).where(conditions).paginate(:page => params[:page], :per_page => 20)
    elsif @start.empty? && !@end.empty?
      time_range = @end.to_datetime.midnight..(@end.to_datetime.midnight + 1.day)
      @invations = Invation.where("invit_time" => time_range).where(conditions).paginate(:page => params[:page], :per_page => 20)
    elsif @start.empty? && @end.empty?
      @invations = Invation.where(conditions).paginate(:page => params[:page], :per_page => 20)
    else
      time_range = Time.now.midnight..(Time.now.midnight + 1.day)
      @invations = Invation.where("invit_time" => time_range).where(conditions).paginate(:page => params[:page], :per_page => 20) 
    end

  end

  # 根据条件搜索客户
  def search_info
    @ccs = Role.find(3).users
    # 根据不同的条件搜索客户
    conditions = " 1=1 "
    # 根据客户名称查询
    @info_name = params[:info_name].to_s.strip
    # 根据客户专业查询
    @expect_major = params[:expect_major].to_s.strip
    # 根据客户所属渠道查询
    @channel_category_id = params[:channel_category_id].to_s.strip
    @is_trained =params[:is_trained]
    @cc_id = params[:cc_id]

    @age = params[:age].to_s.strip
  
    @is_signed = params[:is_signed]


    if !@info_name.empty?
      conditions =conditions + " and name like '%#{@info_name }%' "
    end

    if !@expect_major.empty?
      conditions =conditions + " and expect_major ='#{@expect_major}' "
    end

    if !@is_trained.nil? 
      conditions =conditions + " and is_trained = #{@is_trained} "
    end

    if !@channel_category_id.empty?
      conditions =conditions + " and channel_category_id = #{@channel_category_id} "
    end

    if !@age.empty?
      if @age.to_i < 16
        @max_age = @age.to_i
        conditions =conditions + " and age between #{@age} and #{@max_age + 3}"
      else
        conditions =conditions + " and age > #{@age}"
      end
    end

    if !@cc_id.empty?
      conditions =conditions + " and cc_id = #{@cc_id} "
    end

    if !@is_signed.nil?
      conditions =conditions + " and is_signed = #{@is_signed} "
    end
    @condition = conditions
    @infos = Info.where(conditions).order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
    
  end

  # cc 的客户
  def cc_my
     @infos = Info.where(:cc_id => current_user.id).paginate(:page => params[:page], :per_page => 20)
  end

  # cc 添加客户
  def cc_add_info
    @role = Role.find(3)
    @ccs = @role.users
    @info = Info.new
  end

  # 分配cc到具体用户
  def distribute_cc
      @info = Info.find(params[:info_id])
      @role = Role.find(3)
      @ccs = @role.users.paginate(:page => params[:page], :per_page => 20)
  end

  def save_distribute
    @info = Info.find(params[:info_id])
    if @info.update_attributes(:cc_id => params[:cc_id])
      redirect_to invit_index_client_infos_path
    else
      flash[:notice] = "分配CC不成功！"
      redirect_to root_url
    end
  end

  # 更改签约
  def signed
    @info = Info.find(params[:info_id])
    if @info.is_signed == 1
      flash[:notice] = '该用户已经签约，不能重复确认签约！'
    elsif @info.is_signed == 2
      flash[:notice] = '确认用户签约成功！'
      @info.update_attributes(:is_signed => 1, :signed_user_id => current_user.id, :signed_time => Time.zone.now)
    else
      flash[:notice] = '用户签约状态错误！'
    end

    redirect_to :back
  end

  # callcenter查看页面
  def callcenter_index
    conditions = '1=1'
    if params[:info_name] && !params[:info_name].empty?
      @info_name = params[:info_name]
      conditions << " and name = '#{@info_name}'"
    end

    if params[:source] && !params[:source].empty?
      @source = params[:source]
      conditions << " and source = '#{@source}'"
    end

    if params[:is_validate] && !params[:is_validate].empty?
      @is_validate = params[:is_validate]
      conditions << " and is_validate = '#{@is_validate}'"
    end

    if params[:time] && !params[:time].empty?
      @t = DateTime.strptime(params[:time] + " CCT", "%Y-%m-%d")
      @time = @t.strftime("%Y-%m-%d")
      time_range = @t.midnight..(@t.midnight + 1.day)
    else
      time_range = Time.now.midnight..(Time.now.midnight + 1.day)
    end

    @infos = current_user.infos.where('created_at' => time_range).where(conditions).paginate(:page => params[:page], :per_page => 20)
    @info_count1 = current_user.infos.where('created_at' => time_range).where("source = 1").count()
    @info_count2 = current_user.infos.where('created_at' => time_range).where("source = 2").count()
    @info_count3 = current_user.infos.where('created_at' => time_range).where("source = 3").count()
    @info_count_all = current_user.infos.where('created_at' => time_range).count()
    @info_count_validate = current_user.infos.where('created_at' => time_range).where("is_validate = 1").count()
    if @info_count_all == 0
      @info_validate_rate = "0%"
    else
      @info_validate_rate = sprintf("%.2f",@info_count_validate*1.0000/(@info_count_all)*100)
    end
    # @infos = Info.where("channel_info_id IS NOT NULL and is_signed=2").order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
  end

  # 获取城市名称
  def get_city
    options = ""
    options << "<option>请选择市</option>"
    city = CommonDistrict.where("upid = ? and level= 2", params[:city_id].strip)
    city.each do |s|
      options << "<option value=#{s.id}>#{s.name}</option>"
    end
    render :text => options
  end

  # 获取地区的地址
  def get_district
    options = ""
    options << "<option>请选择地区</option>"
    city = CommonDistrict.where("upid = ? and level= 3", params[:district_id].strip)
    city.each do |s|
      options << "<option value=#{s.id}>#{s.name}</option>"
    end
    render :text => options
  end

end
# encoding: utf-8
class Client::InvationsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @info = Info.find(params[:info_id])
    @invations = @info.invations.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @invation = Invation.find(params[:id])
  end


  def new
    @info =  Info.find(params[:info_id])
    
    if [5,7].include?current_user.roles[0].id
      if @info.invations.where("role_id in (5,7)").count >= 1
        flash[:notice] = "前台或callcenter已经预约，请分配给督导进行预约！"
        redirect_to client_info_invations_url
      else
        @invation = @info.invations.new
      end
    else
       @invation = @info.invations.new
    end
  end

  def edit
    @info = Info.find(params[:info_id])
    @invation = @info.invations.find(params[:id])
  end

  def create
    @info = Info.find(params[:info_id])

    date1 = DateTime.strptime(params[:invation]['invit_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    params[:invation]['invit_time'] = date1
    params[:invation]['status'] = 0
    params[:invation]['user_id'] = current_user.id

    if current_user.roles.include?(Role.find(3))
      params[:invation]['cc_id'] = current_user.id
    end

    # 此处设定用户的角色只有一个，目前的满足需求；如果有多个
    if current_user.roles.size == 1
      current_user.roles.each do |f|
        params[:invation]['role_id'] = f.id
      end
    end

    @invation = @info.invations.new(params[:invation])

    respond_to do |format|
      if @invation.save
        format.html { redirect_to client_info_invation_path(@info, @invation), notice: '新建预约成功！' }
        format.json { render json: @invation, status: :created, location: @invation }
      else
        format.html { render action: "new" }
        format.json { render json: @invation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    date1 = DateTime.strptime(params[:invation]['come_time'].strip + " CCT", "%Y-%m-%d %H:%M %Z")
    params[:invation]['come_time'] = date1
    params[:invation]['confirm_user_id'] = current_user.id
    @info = Info.find(params[:info_id])
    @invation = @info.invations.find(params[:id])

    respond_to do |format|
      if @invation.update_attributes(params[:invation])
        format.html { redirect_to invit_index_client_infos_path, notice: '确认到访成功！' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:info_id])
    @invation = @info.invations.find(params[:id])
    @invation.destroy

    respond_to do |format|
      format.html { redirect_to client_info_invations_url }
      format.json { head :no_content }
    end
  end

  # 如果客户直接拜访
  def come_directly
    @info = Info.find(params[:info_id])
    if current_user.roles[0].id != 5
      flash[:notice] ='您不是前台，不能确认直接来访！' 
      redirect_to client_infos_url
    end
  end

  # 保存直接拜访的用户
  def save_directly
    @info = Info.find(params[:info_id])
    params[:invation]['status'] = params[:status]
    params[:invation]['user_id'] = current_user.id
    params[:invation]['confirm_user_id'] = current_user.id
    params[:invation]['role_id'] = current_user.roles[0].id
    date1 = DateTime.strptime(params[:invation]['come_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    params[:invation]['come_time'] = date1

    if @info.invations.where("role_id in (5,7)").size == 1
      @invation = @info.invations.find(@info.invations[0].id)
      respond_to do |format|
          if @invation.update_attributes(params[:invation])
              format.html { redirect_to client_infos_url, notice: '确认来访成功！' }         
          end
      end
    else
      @invation = @info.invations.new(params[:invation])
      respond_to do |format|
          if @invation.save
            format.html { redirect_to client_infos_url, notice: '确认来访成功！' }
            format.json { render json: @invation, status: :created, location: @invation }
          else
            format.html { redirect_to come_directly_client_info_invations_path(@info), notice: '请重新确认！' }
          end
      end
    end

  end

end

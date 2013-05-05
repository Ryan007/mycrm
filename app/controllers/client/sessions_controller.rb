# encoding: utf-8
class Client::SessionsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @info = Info.find(params[:info_id])
    @sessions = @info.sessions.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @session = Session.find(params[:id])
  end


  def new
    @info =  Info.find(params[:info_id])
    @session = @info.sessions.new
  end

  def edit
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:id])
  end

  def create
    @info = Info.find(params[:info_id])
    date1 = DateTime.strptime(params[:session]['session_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    params[:session]['session_time'] = date1
    @session = @info.sessions.new(params[:session])

    respond_to do |format|
      if @session.save
        format.html { redirect_to client_info_sessions_path(@info), notice: 'Session was successfully created.' }
        format.json { render json: @session, status: :created, location: @session }
      else
        format.html { render action: "new" }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    date1 = DateTime.strptime(params[:session]['session_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    params[:session]['session_time'] = date1
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:id])

    respond_to do |format|
      if @session.update_attributes(params[:session])
        format.html { redirect_to client_info_sessions_path(@info, @session), notice: 'Session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:id])
    @session.destroy

    respond_to do |format|
      format.html { redirect_to client_info_sessions_url }
      format.json { head :no_content }
    end
  end
end

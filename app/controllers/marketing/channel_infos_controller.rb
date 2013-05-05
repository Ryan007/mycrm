# encoding: utf-8
class Marketing::ChannelInfosController < Marketing::BaseController

  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index

    @channel_infos = ChannelInfo.paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @channel_infos }
    end
  end

  # GET /channel_infos/1
  # GET /channel_infos/1.json
  def show
    @channel_info = ChannelInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @channel_info }
    end
  end

  # GET /channel_infos/new
  # GET /channel_infos/new.json
  def new
    @role = Role.find(2) 
    @channels = @role.users
    @channel_info = ChannelInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @channel_info }
    end
  end

  # GET /channel_infos/1/edit
  def edit
    @role = Role.find(2)
    @channels = @role.users
    @channel_info = ChannelInfo.find(params[:id])
  end

  # POST /channel_infos
  # POST /channel_infos.json
  def create
    @channel_info = ChannelInfo.new(params[:channel_info])

    respond_to do |format|
      if @channel_info.save
        format.html { redirect_to marketing_channel_info_path(@channel_info), notice: 'Channel info was successfully created.' }
        format.json { render json: marketing_channel_info_path(@channel_info), status: :created, location: @channel_info }
      end
    end
  end

  # PUT /channel_infos/1
  # PUT /channel_infos/1.json
  def update
    @channel_info = ChannelInfo.find(params[:id])

    respond_to do |format|
      if @channel_info.update_attributes(params[:channel_info])
        format.html { redirect_to marketing_channel_info_path(@channel_info), notice: 'Channel info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @channel_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /channel_infos/1
  # DELETE /channel_infos/1.json
  def destroy
    @channel_info = ChannelInfo.find(params[:id])
    @channel_info.destroy

    respond_to do |format|
      format.html { redirect_to marketing_channel_infos_url }
      format.json { head :no_content }
    end
  end

end

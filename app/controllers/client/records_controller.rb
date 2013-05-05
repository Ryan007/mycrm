# encoding: utf-8
class Client::RecordsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource
  
  def index
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:session_id])
    @records = @session.records.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:session_id])
    @records = @session.records.last(5)
    @record = @session.records.new
  end

  def edit
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:session_id])
    @record = @session.records.find(params[:id])
  end

  def create
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:session_id])
    @record = @session.records.new(params[:record])

    respond_to do |format|
      if @record.save
        format.html { redirect_to new_client_info_session_record_path(@info, @session, @record)}
        format.json { render json: @record, status: :created, location: @record }
      else
        format.html { render action: "new" }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:session_id])
    @record = @session.records.find(params[:id])

    respond_to do |format|
      if @record.update_attributes(params[:record])
        format.html { redirect_to client_info_session_record_path(@info, @session, @record), notice: 'Record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:info_id])
    @session = @info.sessions.find(params[:session_id])
    @record = @session.records.find(params[:id])
    @record.destroy

    respond_to do |format|
      format.html { redirect_to client_info_session_records_path(@info, @session) }
      format.json { head :no_content }
    end
  end
end

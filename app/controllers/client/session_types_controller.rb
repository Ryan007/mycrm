# encoding: utf-8
class Client::SessionTypesController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @session_types = SessionType.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @session_type = SessionType.find(params[:id])
  end

  def new
    @session_type = SessionType.new
  end

  def edit
    @session_type = SessionType.find(params[:id])
  end

  def create
    @session_type = SessionType.new(params[:session_type])

    respond_to do |format|
      if @session_type.save
        format.html { redirect_to client_session_type_path(@session_type), notice: 'Session type was successfully created.' }
        format.json { render json: @session_type, status: :created, location: @session_type }
      else
        format.html { render action: "new" }
        format.json { render json: @session_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @session_type = SessionType.find(params[:id])

    respond_to do |format|
      if @session_type.update_attributes(params[:session_type])
        format.html { redirect_to client_session_type_path(@session_type), notice: 'Session type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @session_type.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @session_type = SessionType.find(params[:id])
    @session_type.destroy

    respond_to do |format|
      format.html { redirect_to client_session_types_url }
      format.json { head :no_content }
    end
  end
end

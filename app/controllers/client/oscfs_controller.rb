# encoding: utf-8
class Client::OscfsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def all
    @oscfs = Oscf.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oscfs }
    end
  end

  def index
    @oscfs = Oscf.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oscfs }
    end
  end

  def show
    @oscf = Oscf.find(params[:id])
  end

  def new
    @oscf = Oscf.new
  end

  def edit
    @oscf = Oscf.find(params[:id])
  end

  def create
    @oscf = Oscf.new(params[:oscf])

    respond_to do |format|
      if @oscf.save
        format.html { redirect_to client_oscf_path(@oscf), notice: '创建成功！' }
        format.json { render json: @oscf, status: :created, location: @oscf }
      else
        format.html { render action: "new" }
        format.json { render json: @oscf.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @oscf = Oscf.find(params[:id])

    respond_to do |format|
      if @oscf.update_attributes(params[:oscf])
        format.html { redirect_to client_oscf_path(@oscf), notice: 'Exam type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oscf.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @oscf = Oscf.find(params[:id])
    @oscf.destroy

    respond_to do |format|
      format.html { redirect_to client_oscfs_url }
      format.json { head :no_content }
    end
  end
end


# encoding: utf-8
class Client::NssrsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @nssrs = Nssr.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nssrs }
    end
  end

  def all
    @nssrs = Nssr.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nssrs }
    end
  end

  def show
    @nssr = Nssr.find(params[:id])
  end

  def new
    @nssr = Nssr.new
  end

  def edit
    @nssr = Nssr.find(params[:id])
  end

  def create
    @nssr = Nssr.new(params[:nssr])

    respond_to do |format|
      if @nssr.save
        format.html { redirect_to client_nssr_path(@nssr), notice: '创建成功！' }
        format.json { render json: @nssr, status: :created, location: @nssr }
      else
        format.html { render action: "new" }
        format.json { render json: @nssr.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @nssr = Nssr.find(params[:id])

    respond_to do |format|
      if @nssr.update_attributes(params[:nssr])
        format.html { redirect_to client_nssr_path(@nssr), notice: 'Exam type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nssr.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @nssr = Nssr.find(params[:id])
    @nssr.destroy

    respond_to do |format|
      format.html { redirect_to client_nssrs_url }
      format.json { head :no_content }
    end
  end
end

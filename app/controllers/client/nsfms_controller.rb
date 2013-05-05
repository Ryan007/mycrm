# encoding: utf-8
class Client::NsfmsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource


  def all
    @nsfms = Nsfm.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nsfms }
    end
  end

  def index
    @nsfms = Nsfm.where("user_id = ?", current_user.id).order("created_at DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nsfms }
    end
  end

  def show
    @nsfm = Nsfm.find(params[:id])
  end

  def new
    @nsfm = Nsfm.new
  end

  def edit
    @nsfm = Nsfm.find(params[:id])
  end

  def create
    @nsfm = Nsfm.new(params[:nsfm])

    respond_to do |format|
      if @nsfm.save
        format.html { redirect_to client_nsfm_path(@nsfm), notice: '创建成功！' }
        format.json { render json: @nsfm, status: :created, location: @nsfm }
      else
        format.html { render action: "new" }
        format.json { render json: @nsfm.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @nsfm = Nsfm.find(params[:id])

    respond_to do |format|
      if @nsfm.update_attributes(params[:nsfm])
        format.html { redirect_to client_nsfm_path(@nsfm), notice: 'Exam type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nsfm.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @nsfm = Nsfm.find(params[:id])
    @nsfm.destroy

    respond_to do |format|
      format.html { redirect_to client_nsfms_url }
      format.json { head :no_content }
    end
  end
end

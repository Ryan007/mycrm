# encoding: utf-8
class Client::ApplyColleagesController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource


  def index
    @apply_colleages = ApplyColleage.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @apply_colleage = ApplyColleage.find(params[:id])
  end

  def new
    @apply_colleage = ApplyColleage.new
  end

  def edit
    @apply_colleage = ApplyColleage.find(params[:id])
  end

  def create
    @apply_colleage = ApplyColleage.new(params[:apply_colleage])

    respond_to do |format|
      if @apply_colleage.save
        format.html { redirect_to client_apply_colleage_path(@apply_colleage), notice: 'Exam type was successfully created.' }
        format.json { render json: @apply_colleage, status: :created, location: @apply_colleage }
      else
        format.html { render action: "new" }
        format.json { render json: @apply_colleage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @apply_colleage = ApplyColleage.find(params[:id])

    respond_to do |format|
      if @apply_colleage.update_attributes(params[:apply_colleage])
        format.html { redirect_to client_apply_colleage_path(@apply_colleage), notice: 'Exam type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apply_colleage.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @apply_colleage = ApplyColleage.find(params[:id])
    @apply_colleage.destroy

    respond_to do |format|
      format.html { redirect_to client_apply_colleages_url }
      format.json { head :no_content }
    end
  end

end

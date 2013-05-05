# encoding: utf-8
class Client::ExamTypesController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @exam_types = ExamType.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @exam_type = ExamType.find(params[:id])
  end

  def new
    @exam_type = ExamType.new
  end

  def edit
    @exam_type = ExamType.find(params[:id])
  end

  def create
    @exam_type = ExamType.new(params[:exam_type])

    respond_to do |format|
      if @exam_type.save
        format.html { redirect_to client_exam_type_path(@exam_type), notice: 'Exam type was successfully created.' }
        format.json { render json: @exam_type, status: :created, location: @exam_type }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @exam_type = ExamType.find(params[:id])

    respond_to do |format|
      if @exam_type.update_attributes(params[:exam_type])
        format.html { redirect_to client_exam_type_path(@exam_type), notice: 'Exam type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_type.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @exam_type = ExamType.find(params[:id])
    @exam_type.destroy

    respond_to do |format|
      format.html { redirect_to client_exam_types_url }
      format.json { head :no_content }
    end
  end
end

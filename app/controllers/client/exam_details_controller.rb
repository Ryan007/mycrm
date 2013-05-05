# encoding: utf-8
class Client::ExamDetailsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource
  
  def index
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:exam_id])
    @exam_details = @exam.exam_details.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @exam_detail = ExamDetail.find(params[:id])
  end

  def new
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:exam_id])
    @exam_detail = @exam.exam_details.new
  end

  def edit
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:exam_id])
    @exam_detail = @exam.exam_details.find(params[:id])
  end

  def create
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:exam_id])
    @exam_detail = @exam.exam_details.new(params[:exam_detail])

    respond_to do |format|
      if @exam_detail.save
        format.html { redirect_to client_info_exam_exam_detail_path(@info, @exam, @exam_detail) , notice: 'ExamDetail was successfully created.' }
        format.json { render json: @exam_detail, status: :created, location: @exam_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:exam_id])
    @exam_detail = @exam.exam_details.find(params[:id])

    respond_to do |format|
      if @exam_detail.update_attributes(params[:exam_detail])
        format.html { redirect_to client_info_exam_exam_detail_path(@info, @exam, @exam_detail), notice: 'ExamDetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:exam_id])
    @exam_detail = @exam.exam_details.find(params[:id])
    @exam_detail.destroy

    respond_to do |format|
      format.html { redirect_to client_info_exam_exam_details_path(@info, @exam) }
      format.json { head :no_content }
    end
  end
end

# class ExamDetailsController < ApplicationController
#   # GET /exam_details
#   # GET /exam_details.json
#   def index
#     @exam_details = ExamDetail.all

#     respond_to do |format|
#       format.html # index.html.erb
#       format.json { render json: @exam_details }
#     end
#   end

#   # GET /exam_details/1
#   # GET /exam_details/1.json
#   def show
#     @exam_detail = ExamDetail.find(params[:id])

#     respond_to do |format|
#       format.html # show.html.erb
#       format.json { render json: @exam_detail }
#     end
#   end

#   # GET /exam_details/new
#   # GET /exam_details/new.json
#   def new
#     @exam_detail = ExamDetail.new

#     respond_to do |format|
#       format.html # new.html.erb
#       format.json { render json: @exam_detail }
#     end
#   end

#   # GET /exam_details/1/edit
#   def edit
#     @exam_detail = ExamDetail.find(params[:id])
#   end

#   # POST /exam_details
#   # POST /exam_details.json
#   def create
#     @exam_detail = ExamDetail.new(params[:exam_detail])

#     respond_to do |format|
#       if @exam_detail.save
#         format.html { redirect_to @exam_detail, notice: 'Exam detail was successfully created.' }
#         format.json { render json: @exam_detail, status: :created, location: @exam_detail }
#       else
#         format.html { render action: "new" }
#         format.json { render json: @exam_detail.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PUT /exam_details/1
#   # PUT /exam_details/1.json
#   def update
#     @exam_detail = ExamDetail.find(params[:id])

#     respond_to do |format|
#       if @exam_detail.update_attributes(params[:exam_detail])
#         format.html { redirect_to @exam_detail, notice: 'Exam detail was successfully updated.' }
#         format.json { head :no_content }
#       else
#         format.html { render action: "edit" }
#         format.json { render json: @exam_detail.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /exam_details/1
#   # DELETE /exam_details/1.json
#   def destroy
#     @exam_detail = ExamDetail.find(params[:id])
#     @exam_detail.destroy

#     respond_to do |format|
#       format.html { redirect_to exam_details_url }
#       format.json { head :no_content }
#     end
#   end
# end

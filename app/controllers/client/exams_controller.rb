# encoding: utf-8
class Client::ExamsController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @info = Info.find(params[:info_id])
    @exams = @info.exams.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @exam = Exam.find(params[:id])
  end


  def new
    @info =  Info.find(params[:info_id])
    @exam = @info.exams.new
  end

  def edit
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:id])
  end

  def create
    @info = Info.find(params[:info_id])
    date1 = DateTime.strptime(params[:exam]['exam_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    params[:exam]['exam_time'] = date1
    @exam = @info.exams.new(params[:exam])

    respond_to do |format|
      if @exam.save
        format.html { redirect_to client_info_exams_path(@info, @exam), notice: 'Exam was successfully created.' }
        format.json { render json: @exam, status: :created, location: @exam }
      else
        format.html { render action: "new" }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    date1 = DateTime.strptime(params[:exam]['exam_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    params[:exam]['exam_time'] = date1
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:id])

    respond_to do |format|
      if @exam.update_attributes(params[:exam])
        format.html { redirect_to client_info_exams_path(@info, @exam), notice: 'Exam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:info_id])
    @exam = @info.exams.find(params[:id])
    @exam.destroy

    respond_to do |format|
      format.html { redirect_to client_info_exams_url }
      format.json { head :no_content }
    end
  end
end


# class ExamsController < ApplicationController
#   # GET /exams
#   # GET /exams.json
#   def index
#     @exams = Exam.all

#     respond_to do |format|
#       format.html # index.html.erb
#       format.json { render json: @exams }
#     end
#   end

#   # GET /exams/1
#   # GET /exams/1.json
#   def show
#     @exam = Exam.find(params[:id])

#     respond_to do |format|
#       format.html # show.html.erb
#       format.json { render json: @exam }
#     end
#   end

#   # GET /exams/new
#   # GET /exams/new.json
#   def new
#     @exam = Exam.new

#     respond_to do |format|
#       format.html # new.html.erb
#       format.json { render json: @exam }
#     end
#   end

#   # GET /exams/1/edit
#   def edit
#     @exam = Exam.find(params[:id])
#   end

#   # POST /exams
#   # POST /exams.json
#   def create
#     @exam = Exam.new(params[:exam])

#     respond_to do |format|
#       if @exam.save
#         format.html { redirect_to @exam, notice: 'Exam was successfully created.' }
#         format.json { render json: @exam, status: :created, location: @exam }
#       else
#         format.html { render action: "new" }
#         format.json { render json: @exam.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PUT /exams/1
#   # PUT /exams/1.json
#   def update
#     @exam = Exam.find(params[:id])

#     respond_to do |format|
#       if @exam.update_attributes(params[:exam])
#         format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
#         format.json { head :no_content }
#       else
#         format.html { render action: "edit" }
#         format.json { render json: @exam.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /exams/1
#   # DELETE /exams/1.json
#   def destroy
#     @exam = Exam.find(params[:id])
#     @exam.destroy

#     respond_to do |format|
#       format.html { redirect_to exams_url }
#       format.json { head :no_content }
#     end
#   end
# end


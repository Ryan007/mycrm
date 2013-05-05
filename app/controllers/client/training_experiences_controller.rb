# encoding: utf-8
class Client::TrainingExperiencesController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource


  def index
    @info = Info.find(params[:info_id])
    @training_experiences = @info.training_experiences.paginate(:page => params[:page], :per_page => 20)

  end

  def show
    @info = Info.find(params[:info_id])
    @training_experience = @info.training_experiences.find(params[:id])
  end

  def new
    @info = Info.find(params[:info_id])
    @training_experience = @info.training_experiences.new
  end


  def edit
    @info = Info.find(params[:info_id])
    @training_experience = @info.training_experiences.find(params[:id])
  end

  def create
    @info = Info.find(params[:info_id])

    date1 = DateTime.strptime(params[:training_experience]['start_time'] + " CCT", "%Y-%m-%d %Z")
    date2 = DateTime.strptime(params[:training_experience]['finish_time'] + " CCT", "%Y-%m-%d %Z")
    params[:training_experience]['start_time'] = date1
    params[:training_experience]['finish_time'] = date2

    @training_experience = @info.training_experiences.new(params[:training_experience])

    respond_to do |format|
      if @training_experience.save
        format.html { redirect_to client_info_training_experience_path(@info, @training_experience), notice: 'Training experience was successfully created.' }
        format.json { render json: @training_experience, status: :created, location: @training_experience }
      else
        format.html { render action: "new" }
        format.json { render json: @training_experience.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @info = Info.find(params[:info_id])
    @training_experience =  @info.training_experiences.find(params[:id])

    respond_to do |format|
      if @training_experience.update_attributes(params[:training_experience])
        format.html { redirect_to client_info_training_experience_path(@info, @training_experience), notice: 'Training experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @training_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_experiences/1
  # DELETE /training_experiences/1.json
  def destroy
    @training_experience = TrainingExperience.find(params[:id])
    @training_experience.destroy

    respond_to do |format|
      format.html { redirect_to client_info_training_experiences_url }
      format.json { head :no_content }
    end
  end
end

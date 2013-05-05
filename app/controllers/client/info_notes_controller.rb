# encoding: utf-8
class Client::InfoNotesController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @info = Info.find(params[:info_id])

    if [1, 4, 5].include?current_user.roles[0].id
      @info_notes = @info.info_notes.paginate(:page => params[:page], :per_page => 20)
    else
      @info_notes = @info.info_notes.where("cc_id = #{current_user.id}").paginate(:page => params[:page], :per_page => 20)
    end
  end

  def show
    @info_note = InfoNote.find(params[:id])
  end


  def new
    @info =  Info.find(params[:info_id])
    @info_note = @info.info_notes.new
  end

  def edit
    @info = Info.find(params[:info_id])
    @info_note = @info.info_notes.find(params[:id])
    if current_user.id != @info_note.cc_id
      flash[:notice] = "对不起，您只能修改自己的备注！"
      redirect_to client_info_info_notes_url
    end
  end

  def create
    @info = Info.find(params[:info_id])
    # date1 = DateTime.strptime(params[:info_note]['info_note_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    # params[:info_note]['info_note_time'] = date1
    @info_note = @info.info_notes.new(params[:info_note])

    respond_to do |format|
      if @info_note.save
        format.html { redirect_to client_info_info_note_path(@info, @info_note), notice: '成功添加备注！' }
        format.json { render json: @info_note, status: :created, location: @info_note }
      else
        format.html { render action: "new" }
        format.json { render json: @info_note.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    # date1 = DateTime.strptime(params[:info_note]['info_note_time'] + " CCT", "%Y-%m-%d %H:%M %Z")
    # params[:info_note]['info_note_time'] = date1
    @info = Info.find(params[:info_id])
    @info_note = @info.info_notes.find(params[:id])

    respond_to do |format|
      if @info_note.update_attributes(params[:info_note])
        format.html { redirect_to client_info_info_note_path(@info, @info_note), notice: 'InfoNote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @info_note.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:info_id])
    @info_note = @info.info_notes.find(params[:id])
    if current_user.id != @info_note.cc_id
      flash[:notice] = "对不起，您只能删除自己的备注！"
    else
      @info_note.destroy
    end

    respond_to do |format|
      format.html { redirect_to client_info_info_notes_url }
      format.json { head :no_content }
    end
  end
end


# encoding: utf-8
class Client::CharacterTypesController < Client::BaseController
  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource


  def index
    @character_types = CharacterType.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @character_type = CharacterType.find(params[:id])
  end

  def new
    @character_type = CharacterType.new
  end

  def edit
    @character_type = CharacterType.find(params[:id])
  end

  def create
    @character_type = CharacterType.new(params[:character_type])

    respond_to do |format|
      if @character_type.save
        format.html { redirect_to client_character_type_path(@character_type), notice: 'Exam type was successfully created.' }
        format.json { render json: @character_type, status: :created, location: @character_type }
      else
        format.html { render action: "new" }
        format.json { render json: @character_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @character_type = CharacterType.find(params[:id])

    respond_to do |format|
      if @character_type.update_attributes(params[:character_type])
        format.html { redirect_to client_character_type_path(@character_type), notice: 'Exam type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @character_type.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @character_type = CharacterType.find(params[:id])
    @character_type.destroy

    respond_to do |format|
      format.html { redirect_to client_character_types_url }
      format.json { head :no_content }
    end
  end

end

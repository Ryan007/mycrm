# encoding: utf-8
class Marketing::ChannelCategoriesController < Marketing::BaseController

  before_filter :authenticate_user!
  # 两种验证方式 前面会加载model 后面的不会加载model
  load_and_authorize_resource
  #authorize_resource

  def index
    @channel_categories = ChannelCategory.paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @channel_categories }
    end
  end

  # GET /channel_categories/1
  # GET /channel_categories/1.json
  def show
    @channel_category = ChannelCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @channel_category }
    end
  end

  # GET /channel_categories/new
  # GET /channel_categories/new.json
  def new
    @channel_category = ChannelCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @channel_category }
    end
  end

  # GET /channel_categories/1/edit
  def edit
    @channel_category = ChannelCategory.find(params[:id])
  end

  # POST /channel_categories
  # POST /channel_categories.json
  def create
    @channel_category = ChannelCategory.new(params[:channel_category])

    respond_to do |format|
      if @channel_category.save
        format.html { redirect_to marketing_channel_category_path(@channel_category), notice: 'Channel category was successfully created.' }
        format.json { render json: @channel_category, status: :created, location: @channel_category }
      else
        format.html { render action: "new" }
        format.json { render json: @channel_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /channel_categories/1
  # PUT /channel_categories/1.json
  def update
    @channel_category = ChannelCategory.find(params[:id])

    respond_to do |format|
      if @channel_category.update_attributes(params[:channel_category])
        format.html { redirect_to marketing_channel_category_path(@channel_category), notice: 'Channel category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @channel_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /channel_categories/1
  # DELETE /channel_categories/1.json
  def destroy
    @channel_category = ChannelCategory.find(params[:id])
    @channel_category.destroy

    respond_to do |format|
      format.html { redirect_to marketing_channel_categories_url }
      format.json { head :no_content }
    end
  end
end

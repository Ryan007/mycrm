# encoding: utf-8
class Client::BaseController < ApplicationController
  # 导航样式需要
  before_filter :action_for_nav

  def index
  end

  def invitations
  	@invations = @info.invations.paginate(:page => params[:page], :per_page => 20)
  end
  
  private
  def action_for_nav
  	@resource_name = 'Client'
  end
end

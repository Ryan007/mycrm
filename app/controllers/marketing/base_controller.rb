# encoding: utf-8
class Marketing::BaseController < ApplicationController
  # 导航样式需要
  before_filter :action_for_nav

  def index
  end

  private
  def action_for_nav
  	@resource_name = 'Marketing'
  end

end

# encoding: utf-8
Mycrm::Application.routes.draw do

  get "home/index"
  root :to => "home#index"
  
  # 用户系统devise 重写了注册组件
  devise_for :users, :controllers => {:registrations => "registrations"} 
  
  devise_scope :user do
    # 等待邮箱验证
    match "awaiting_confirmation", :to => "registrations#awaiting_confirmation", :via => [:get], :as => "awaiting_confirmation"
    # 微博用户授权以后如果没有注册就会来这个地址注册
    # match "users/weibo_sign_up", :to => "registrations#weibo_new", :via => [:get], :as => "new_weibo_user_registration"       
  end

  # 管理员模块
  namespace :admin do
    root :to => "base#index"
    resources :users do
      # 角色分配
      get 'roles', :on => :member
      # 角色分配 写操作
      post 'assign_roles', :on => :member
      # 锁定用户
      post 'lock', :on => :member
      # 解锁用户
      post 'unlock', :on => :member
    end
    resources :roles do
      # 权限分配
      get 'permissions', :on => :member
      # 权限分配 写操作
      post 'assign_permissions', :on => :member
    end
    
    get "analytic/index"
    get "analytic/callcenter"
    get "analytic/cc"

    resources :permissions
  end

  # 市场模块
  namespace :marketing do
    root :to => "base#index"
    resources :bases
    
    # channel category
    resources :channel_categories
    # channel channel_infos
    resources :channel_infos
  end

  #客户信息模块
  namespace :client do
    root :to => "base#index" 
    # resource :base do 
    #   get 'all', :on => :collection
    # end
    
    #地区信息
    resources :common_districts
    #性格类型
    resources :character_types
    #申请院校
    resources :apply_colleages

    # 会话类型
    resources :session_types

    # 考试类型
    resources :exam_types

    # 未报名学生跟进
    resources :nssrs do 
      get 'all', :on => :collection
    end

    # 老学员跟进
    resources :oscfs do
      get 'all', :on => :collection
    end

    # 新学员跟进
    resources :nsfms do 
      get 'all', :on => :collection
    end


    #客户信息
    resources :infos  do
      get 'invit_index', :on => :collection
      get 'invit_search', :on => :collection
      get 'search_info', :on => :collection
      get 'cc_my', :on => :collection
      get 'cc_add_info', :on => :collection
      get 'channel_my', :on => :collection
      get 'signed', :on => :collection
      # 渠道，callcenter添加用户
      get 'channel_add_info', :on => :collection
      get 'callcenter_add_info', :on => :collection
      # 分配cc到给客户
      get 'distribute_cc', :on => :collection
      post 'save_distribute', :on => :collection

      # call center
      get 'callcenter_index', :on => :collection

      # 级联查询
      get 'get_city', :on => :collection
      get 'get_district', :on => :collection
      # 邀访
      resources :invations do 
        get 'come_directly', :on => :collection
        post 'save_directly', :on => :collection
      end
      # 客户信息包含很多会话
      resources :sessions do 
          # 每个会话有很多信息
          resources :records
      end
      # 培训经历
      resources :training_experiences
      # 考试成绩管理
      resources :exams do 
        resources :exam_details
      end

      # 给客户添加备注
      resources :info_notes
    end

  end
  
end

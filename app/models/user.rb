class User < ActiveRecord::Base
  has_and_belongs_to_many :roles, :join_table => 'users_roles'
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :last_sign_in_at
  # attr_accessible :title, :body

  if Rails.env.production?
    attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at, :last_sign_in_at
  else
    attr_accessible :name, :email, :password, :password_confirmation, :remember_me,  :confirmation_token,
      :admin, :sign_in_count, :password_salt, :confirmed_at, :confirmation_sent_at, :created_at, :updated_at,
      :encrypted_password, :last_sign_in_at
  end

  #每个人只能来源一个渠道
  has_one :channel_info

  # 每个用户有自己的客户
  has_many :infos

  # 每个管理员可以有多个会话
  has_many :sessions

  # 每个客户可以创建多个培训经历
  has_many :training_experiences

  has_many :invations

  # belongs_to :cc, :class_name => "User",
    # :foreign_key => "cc_id"

  has_many :nsfms

  has_many :nssrs

  has_many :oscfs



  # 已经不需要了 重写了ablity.rb的方法
  def role?(role)
    return !!self.roles.find_by_rolename(role.to_s.camelize)
  end
end

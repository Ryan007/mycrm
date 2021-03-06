class Role < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :users, :join_table => 'users_roles'
  has_and_belongs_to_many :permissions, :join_table => 'roles_permissions'
end
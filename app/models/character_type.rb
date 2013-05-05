class CharacterType < ActiveRecord::Base
  # attr_accessible :character_name, :
  # 多个客户可以用同一个性格类型
  has_many :infos
end

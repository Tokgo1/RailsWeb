class Micropost < ApplicationRecord

  belongs_to :user
  validates :content, length: {maximum: 140}, # 限制微博的长度最多为140个字符
            presence: true # 微博 内容存在性
end

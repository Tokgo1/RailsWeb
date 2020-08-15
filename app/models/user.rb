class User < ApplicationRecord
  has_many :microposts

  # validates FILL_IN, presence: true # 把 FILL_IN换成正确的代码
end

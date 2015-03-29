class User < ActiveRecord::Base
  attr_accessible :email, :phone
  validates :phone, presence: true
  validates :phone, length: { is: 12 }
  validates :phone, uniqueness: true

  # validates :email, :email => true
  # validates :email, uniqueness: true
end

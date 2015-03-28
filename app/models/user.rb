class User < ActiveRecord::Base
  attr_accessible :email

  validates :email, :email => true
  validates :email, uniqueness: true
end

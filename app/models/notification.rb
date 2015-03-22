class Notification < ActiveRecord::Base
  attr_accessible :message, :type, :list_id
  belongs_to :list
end

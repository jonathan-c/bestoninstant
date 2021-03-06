class User < ActiveRecord::Base
  attr_accessible :email, :phone, :active
  validates :phone, presence: true
  validates :phone, length: { is: 12 }
  validates :phone, uniqueness: true

  after_create :send_confirmation_text
  # validates :email, :email => true
  # validates :email, uniqueness: true

  def send_confirmation_text
    send_text(self.phone, "Welcome to the club! You will now receive Best on Instant movie notifications.")
  end

end

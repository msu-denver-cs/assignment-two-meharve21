class Make < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: {minimum:2}
  has_many :cars

end

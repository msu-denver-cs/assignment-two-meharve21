class Part < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: {minimum:2}
  has_and_belongs_to_many :cars
end

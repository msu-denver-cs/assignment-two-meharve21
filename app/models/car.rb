class Car < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: {minimum:2}
  belongs_to :make
  has_and_belongs_to_many :parts
end

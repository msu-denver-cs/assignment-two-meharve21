class Car < ActiveRecord::Base
  belongs_to :make
  has_and_belongs_to_many :parts
end

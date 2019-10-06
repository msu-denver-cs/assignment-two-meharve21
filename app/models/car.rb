class Car < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: {minimum:2}
  belongs_to :make
  has_and_belongs_to_many :parts

  def self.search(search)
    if search
      make = Make.find_by(name: search)
      if make
        self.where(make_id: make)
      else
        Car.all
      end
    else
      Car.all
    end
  end
end

class Closet < ActiveRecord::Base
  has_many :skeletons
  validates(:name, presence: true)

end

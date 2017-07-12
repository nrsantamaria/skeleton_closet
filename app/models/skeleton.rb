class Skeleton < ActiveRecord::Base
  belongs_to :closet
  validates(:name, presence: true)
end

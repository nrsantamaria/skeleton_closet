class Skeleton < ActiveRecord::Base
  belongs_to :closet
  validates(:name, :body, presence: true)
end

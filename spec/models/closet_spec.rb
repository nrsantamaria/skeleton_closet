require 'rails_helper'

describe Closet do
  it { should have_many :skeletons }
  it { should validate_presence_of :name }
end

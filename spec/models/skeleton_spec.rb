require 'rails_helper'

describe Skeleton do
  it { should belong_to :closet }
  it { should validate_presence_of :name }
end
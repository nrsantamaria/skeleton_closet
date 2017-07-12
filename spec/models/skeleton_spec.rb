require 'rails_helper'

describe Skeleton do
  it { should belong_to :closet }
  it { should validate_presence_of :name }
  it { should validate_presence_of :body }
  # it { should have_attached_file(:picture) }
  # it { should validate_attachment_content_type(:picture).
  #             allowing('image/png', 'image/gif').
  #             rejecting('text/plain', 'text/xml') }
end

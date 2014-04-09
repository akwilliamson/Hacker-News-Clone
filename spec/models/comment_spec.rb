require 'spec_helper'

describe Comment do
  it { should belong_to :post }
  it { should have_many :comments }

  it { should validate_presence_of :content }

end

require 'spec_helper'

describe Post do
  it { should have_many :comments }

  it { should validate_presence_of :link }
  it { should validate_presence_of :description }
end

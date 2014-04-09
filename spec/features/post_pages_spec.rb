require 'spec_helper'

describe Post do
  it 'can be posted by a user' do
    visit posts_path
    click_link 'Create new Post'
    fill_in 'post_link', :with => 'www.cars.com'
    fill_in 'post_description', :with => 'blahblah'
    click_button 'Create Post'
    page.should have_content 'blahblah'
  end
end


class Post < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates_presence_of :link
  validates_presence_of :description

  def

  end

end

class Comment < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :post
  belongs_to :commentable, polymorphic: true
  validates_presence_of :content
end

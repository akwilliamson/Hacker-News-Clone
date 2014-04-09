class Post < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates_presence_of :link
  validates_presence_of :description

  # def score_attrition
  #   number = (Time.now - self.created_at)/1000
  #   self.total_score -= number
  # end
end

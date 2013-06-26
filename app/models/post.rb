class Post < ActiveRecord::Base
  attr_accessible :admin_user_id, :body, :category_id, :title
  belongs_to :category
  belongs_to :admin_user
  has_many :post_comments, :dependent => :destroy
end

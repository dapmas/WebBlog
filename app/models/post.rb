class Post < ActiveRecord::Base
  #attr_accessible :name, :body, :categoy_id, :author_id
  belongs_to :category
  belongs_to :admin_user
end

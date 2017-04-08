class Post < ActiveRecord::Base
  #attr_accessible :name, :body, :categoy_id, :author_id
  belongs_to :category
end

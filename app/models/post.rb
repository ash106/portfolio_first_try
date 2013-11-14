class Post < ActiveRecord::Base
  belongs_to :user
  has_many :tags, as: :taggable, dependent: :destroy
  accepts_nested_attributes_for :tags
  attr_accessible :body, :published_at, :seo_description, :seo_title, :title, :tags_attributes
end

class Picture < ActiveRecord::Base
  belongs_to :pictureable, polymorphic: true
  attr_accessible :caption, :description, :image
  has_attached_file :image, 
                    styles: {  
                      large: "600x600>", 
                      medium: "300x300>",
                      small: "200x200>",  
                      thumb: "100x100>" }

  validates :image, presence: true
end

class Thought < ActiveRecord::Base
  belongs_to :link
  has_attached_file :image, :styles => {:large => "800x600#", :medium => "600x450#", :thumb => "100x75#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

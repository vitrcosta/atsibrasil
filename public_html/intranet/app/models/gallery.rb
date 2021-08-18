class Gallery < ActiveRecord::Base

  belongs_to :post
  has_attached_file :image, :styles =>{:thumb =>"305x190#", :medium =>"#754x"}
  do_not_validate_attachment_file_type :image
end

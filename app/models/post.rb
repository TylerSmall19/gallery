class Post < ActiveRecord::Base
	has_attached_file :photo, 
										:url  => "/assets/images/users/:id/:style/:basename.:extension",
                  	:path => ":rails_root/public/assets/images/users/:id/:style/:basename.:extension"
	validates :title, :description, presence: true
	# validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end

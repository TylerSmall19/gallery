class Post < ActiveRecord::Base
	has_attached_file :photo, 
										:url  	=> "/assets/images/users/:id/:style/:basename.:extension",
                  	:path 	=> ":rails_root/public/assets/images/users/:id/:style/:basename.:extension"

	validates :title, :description, :photo, presence: true
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end

class Contact < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone_number, :picture
   
  validates_presence_of :first_name, :last_name, :email, :phone_number
  
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/



end

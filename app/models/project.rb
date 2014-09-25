class Project < ActiveRecord::Base
	belongs_to :user
	has_many :donations
	has_many :backers, through: :donations
	has_many :rewards
	accepts_nested_attributes_for :rewards, :reject_if => :all_blank

	has_attached_file :image, :styles => { :medium => "313x468>", :thumb => "100x100>" }, :default_url => "/images/no_image.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

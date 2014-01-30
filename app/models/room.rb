class Room < ActiveRecord::Base

	validates :title, :location, :image, :presence => true

	belongs_to :user

	mount_uploader :image, ImageUploader

end

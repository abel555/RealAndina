class Cert < ApplicationRecord
	mount_uploader :image, ImageUploader
end

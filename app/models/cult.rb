class Cult < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :title, presence: { message: "el titulo no puede estar vacío."}

	validates :image, presence: { message: "debe seleccionar una imagen."}
end

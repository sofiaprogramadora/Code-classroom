class TutorialMakerAdmin < ApplicationRecord
	mount_uploader :image, ImageUploader
    mount_uploader :file, ZipUploader
end

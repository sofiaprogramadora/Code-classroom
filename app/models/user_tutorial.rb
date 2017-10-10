class UserTutorial < ApplicationRecord
    resourcify
    belongs_to :user
    mount_uploader :image, ImageUploader
    mount_uploader :file, ZipUploader
end

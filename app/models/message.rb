class Message < ApplicationRecord
    mount_uploader :attachment_file, AttachmentFileUploader
end

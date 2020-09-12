class Post < ApplicationRecord

    has_attached_file :image, size: { in: 0..2.megabytes }, styles: { medium: "600x600>", thumb: "300x300>" }

    validates :contents, presence:true

    validates :image, attachment_presence:true
    # Validate content type
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    # Validate filename
    validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]

    validates_attachment_size :image, less_than: 2.megabytes
    # Explicitly do not validate
    do_not_validate_attachment_file_type :image

end

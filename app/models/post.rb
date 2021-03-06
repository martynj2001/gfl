class Post < ApplicationRecord

    

    belongs_to :category
    
    validates :title, :content, :category_id, presence: true
    validates :image, file_size: { less_than: 1.megabytes }

    has_many :line_items, inverse_of: :order

    mount_uploader :image, ImageUploader
    mount_uploaders :attachments, ImageUploader

    extend FriendlyId
    friendly_id :title, use: :slugged

    private

    def should_generate_new_friendly_id?
        slug.nil? || title_changed?
    end

end

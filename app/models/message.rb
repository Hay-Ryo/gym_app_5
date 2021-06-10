class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true,unless: :is_present?

  def is_present?
    self.img.present?
  end
  
  mount_uploader :img, ImgUploader

# partial内でユーザーの分別ができないため変更↓↓
  def template
  ApplicationController.render_with_signed_in_user(user, partial: 'messages/message', locals: { message: self })
  end

end
class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true,unless: :is_present?

  mount_uploader :img, ImgUploader
  
  def is_present?
    self.img.present?
  end

# 非同期の設定
# partial内でユーザーの分別ができないため変更↓↓
  def template
  ApplicationController.render_with_signed_in_user(user, partial: 'messages/message', locals: { message: self })
  end

end
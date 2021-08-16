class Task < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  # タイトル欄は空白でも送信できることにした
  validates :content, presence: true

end

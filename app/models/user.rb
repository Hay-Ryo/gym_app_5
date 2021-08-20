class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
# ログインの保持
  def remember_me
    true
  end

  has_many :messages, dependent: :destroy
  has_many :attends, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :schedules, dependent: :destroy
  has_many :likes, dependent: :destroy
  
  validates :user_name, presence: true, length: { maximum: 15, minimum: 2 }
  validates :user_name, uniqueness: true
  validates :email, uniqueness: true
  validates :email, presence: true

  # 画像アップできるように
  mount_uploader :img, ImgUploader
  
  # タスクの完了ボタンの設定
  def liked_by?(task_id)
    likes.where(task_id: task_id).exists?
  end


end

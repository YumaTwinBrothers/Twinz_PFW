class Message < ApplicationRecord
  # belongs_to :user
  validates :username, presence: true
  validates :body, presence: true
  scope :custom_display, -> { order(:created_at).last(20) }

  def self.search(search)
    if search
      Message.where(['body LIKE ?', "%#{search}%"])
    else
      Message.custom_display
    end
  end
end

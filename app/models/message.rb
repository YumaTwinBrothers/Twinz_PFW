class Message < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2, maximum: 25 }
  validates :body, presence: true, length: { minimum: 3, maximum: 340 }
  scope :custom_display, -> { order(:created_at) }

  def self.search(search)
    if search
      Message.where(['body LIKE ?', "%#{search}%"])
    else
      Message.custom_display
    end
  end
end

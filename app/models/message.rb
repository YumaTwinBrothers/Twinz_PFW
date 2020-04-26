class Message < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2, maximum: 25 }
  validates :body, presence: true, length: { minimum: 2, maximum: 340 }

  def self.search(search)
    if search
      Message.where(['body LIKE ?', "%#{search}%"])
    else
      order(created_at: "ASC")
    end
  end
end

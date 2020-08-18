class Topic < ApplicationRecord

  belongs_to :admin

  attachment :image, destroy: false

  validates :title, presence: true, length: {maximum: 30, minimum: 2}

  validates :body, presence: true

end
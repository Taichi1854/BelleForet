class Comment < ApplicationRecord

  belongs_to :topic
  belongs_to :customer

end

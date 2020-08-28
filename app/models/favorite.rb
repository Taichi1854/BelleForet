class Favorite < ApplicationRecord

  belongs_to :topic
  belongs_to :customer

  validates_uniqueness_of :topic_id, scope: :customer_id


end

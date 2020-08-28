class Topic < ApplicationRecord


  belongs_to :admin


  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy


  attachment :image, destroy: false


  validates :title, presence: true, length: {maximum: 30, minimum: 2}
  validates :body, presence: true
  validates :image, presence: true


  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end


  def previous
    Topic.where("id < ?", self.id).order("id DESC").first
  end


  def next
    Topic.where("id > ?", self.id).order("id ASC").first
  end


end
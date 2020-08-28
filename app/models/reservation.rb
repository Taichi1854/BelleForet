class Reservation < ApplicationRecord


  belongs_to :customer


  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :first_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。' }
  validates :last_name_kana,  presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。' }
  validates :tel, presence: true, format: { with: /\A\d{10}$|^\d{11}\z/, message: '10桁か11桁の電話番号を入力してください。' }
  validates :email, presence: true
  validates :people, presence: true
  validates :date, presence: true


end

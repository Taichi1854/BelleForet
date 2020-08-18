class ContactMailer < ApplicationMailer

  def send_when_admin_reply(user, contact) #メソッドに対して引数を設定
    @customer = customer #ユーザー情報
    @answer = contact.reply_text #返信内容
    mail to: customer.email, subject: '【BellForet】お問い合わせありがとうございます'
  end

end

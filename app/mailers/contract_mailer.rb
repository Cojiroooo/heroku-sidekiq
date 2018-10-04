class ContractMailer < ApplicationMailer
  default from: 'info@example.com'
  
  def contracted(user)
    @user = user
    @url  = 'http://example.com/contracts/index'
    mail(to: "eveve0418@gmail.com", from: "info@example1.com" ,subject: 'ご契約が成立しました！')
  end
end

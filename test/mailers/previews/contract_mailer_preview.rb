# Preview all emails at http://localhost:3000/rails/mailers/contract_mailer
class ContractMailerPreview < ActionMailer::Preview
  def contracted
    ContractMailer.contracted(User.find(1))
  end
end

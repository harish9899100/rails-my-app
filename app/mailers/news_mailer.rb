class NewsMailer < ApplicationMailer
  def weekly(customer)
    @customer = customer
    mail(to: @customer.email, subject: "Weekly News")
  end
end

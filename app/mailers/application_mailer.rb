class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'

    def order_receipt(order)
    @order = order
    mail(to: @order.email, subject: @order.id)
  end
end

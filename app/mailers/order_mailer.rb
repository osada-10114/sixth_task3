class OrderMailer < ActionMailer::Base
  default to: User.pluck(:email),
          from:   "try.osada@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.send_when_ordered.subject
  #
  def send_when_ordered(order)
    @order = order
    mail to: 	    order.email,
    	   subject: '注文を承りました'
  end
end
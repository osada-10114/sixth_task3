# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/send_when_ordered
  def send_when_ordered
    OrderMailerMailer.send_when_ordered
  end

end

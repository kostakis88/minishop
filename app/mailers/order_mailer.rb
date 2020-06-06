class OrderMailer < ApplicationMailer
  default from: 'Kostas Ntallas <minishop@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received
    @order = order
    
    mail to: order.email, subject: 'Minishop Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped
    @order = order
    
    mail to: order.email, subject: 'Minishop Store Order Shipped'
  end
end

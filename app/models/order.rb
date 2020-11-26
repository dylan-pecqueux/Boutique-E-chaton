class Order < ApplicationRecord
  belongs_to :user
  after_create :order_send

  def order_send
    UserMailer.order_email(self).deliver_now
    AdminMailer.info_new_order(self).deliver_now
  end

end

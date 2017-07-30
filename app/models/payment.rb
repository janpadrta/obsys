# == Schema Information
#
# Table name: payments
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  order_id   :integer
#  amount     :decimal(, )
#  pay_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :client
  belongs_to :order

  scope :patri, -> (client) { where(client_id: client) }
end

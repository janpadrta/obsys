# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  product_id :integer          not null
#  order_id   :integer          not null
#  client_id  :integer          not null
#  pieces     :integer          default(1), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Purchase < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :client

  scope :patri, -> (client) { where(client_id: client) }
end

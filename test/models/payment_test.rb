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

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

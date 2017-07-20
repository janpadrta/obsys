# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  branch_id     :integer          not null
#  delivery_date :date
#  state         :integer          default(1), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

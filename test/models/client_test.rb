# == Schema Information
#
# Table name: clients
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string           not null
#  street          :string
#  street_number   :string
#  city            :string
#  postal_code     :string
#  active          :boolean          default(TRUE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  variable_symbol :integer
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

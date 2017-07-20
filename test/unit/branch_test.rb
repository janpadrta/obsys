# == Schema Information
#
# Table name: branches
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BranchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Branch.new.valid?
  end
end

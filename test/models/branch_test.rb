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
  context 'associations' do
    should have_many(:products)
    should have_many(:orders)
  end

  context 'validations' do
    should validate_presence_of(:name)
  end

  context 'test' do
    @branch = FactoryGirl.create(:branch)
    assert @branch.name == 'branch1'
  end
end

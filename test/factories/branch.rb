# == Schema Information
#
# Table name: branches
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  sequence :branch_name do |n|
    "branch #{n}"
  end

  factory :branch do
    name { generate(:branch_name) }
  end
end
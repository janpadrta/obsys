# == Schema Information
#
# Table name: branches
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Branch < ApplicationRecord
  has_many :products
  has_many :orders

  validates_presence_of :name
end

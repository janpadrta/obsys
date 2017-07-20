# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  branch_id   :integer          not null
#  size        :string
#  price       :decimal(, )      default(0.0), not null
#  active      :boolean          default(TRUE)
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  has_many :purchases
  has_many :orders, through: :purchases
  has_many :clients, through: :purchases
  belongs_to :branch

  attr_accessor :order_id, :pieces, :client_id

  validates_presence_of :pieces

  after_create :po_vytvoreni
  after_save :po_ulozeni

  def po_vytvoreni
    Purchase.create(
        product_id: self.id,
        order_id: self.order_id,
        client_id: self.client_id,
        pieces: self.pieces
    )
  end

  def po_ulozeni
  end
end

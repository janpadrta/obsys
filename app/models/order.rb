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

class Order < ApplicationRecord
  has_many :purchases
  has_many :products, through: :purchases
  has_many :clients, through: :purchases
  belongs_to :branch

  STATE = {
      1 => 'nová',
      2 => 'plní se',
      3 => 'objednaná',
      4 => 'doručená',
      5 => 'uzavřená'
  }

  scope :active, -> { where(state: [1,2]) }
  scope :ordered, -> { where(state: 3) }
  scope :delivered, -> { where(state: 4) }
  scope :closed, -> { where(state: 5) }

  def name
    "#{branch.name} - #{delivery_date.strftime('%d.%m.%Y')}"
  end

  def rekni_stav
    STATE[state]
  end

  def cena_celkem
    purchases.includes(:product).map{|pur| pur.product.price * pur.pieces}.sum
  end
end

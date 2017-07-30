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

class Client < ApplicationRecord
  has_many :purchases
  has_many :orders, through: :purchases
  has_many :products, through: :purchases
  has_many :payments

  before_create :pred_vytvorenim

  validates_uniqueness_of :variable_symbol
  validates_presence_of :variable_symbol

  def pred_vytvorenim
    self.variable_symbol = Client.generuj_vs
  end

  def self.generuj_vs
    max_vs = Client.maximum(:variable_symbol)
    max_vs.present? ? max_vs + 1 : 1010
  end

  def cele_jmeno
    "#{last_name.upcase} #{first_name}"
  end

  def adresa
    "#{street} #{street_number}, #{postal_code} #{city}"
  end

  def order_value(ord)
    ord.purchases.patri(self).includes(:product).map{|pur| pur.product.price * pur.pieces}.sum
  end

  def nedoplacene_objednavky
    ret = {}
    orders.includes(:payments, :purchases).each do |ord|
      hodnota = self.order_value(ord)
      hodnota -= ord.payments.patri(self).sum(:amount)
      next if hodnota < 0.0
      ret[ord] = hodnota
    end
    ret
  end
end

module ApplicationHelper
  def format_date(date, format = '%d.%m.%Y')
    return '' if date.blank?
    date.strftime(format)
  end

  def format_currency(amount, curr = 'Kč', precision = 2)
    curr = '' if curr.nil?
    number_to_currency(amount, unit: curr, locale: :cs, format: '%n %u', precision: precision)
  end
end

module ApplicationHelper
  def customers_page?
    current_page?(controller: 'customers')
  end

  def vehicles_page?
    current_page?(controller: 'vehicles')
  end

  def work_orders_page?
    current_page?(controller: 'work_orders')
  end
end

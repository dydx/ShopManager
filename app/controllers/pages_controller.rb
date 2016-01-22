class PagesController < ApplicationController
  before_action :check_signed_in

  def index
    @work_orders = WorkOrder.all
  end

  private
  def check_signed_in
    redirect_to work_orders_path if signed_in?
  end
end

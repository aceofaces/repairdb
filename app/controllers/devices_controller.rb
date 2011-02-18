class DevicesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  def index
   hobo_index Device.apply_scopes(:search => [params[:search],:make,:model1,:sn], :joins=>:store, :order_by => parse_sort_param(:make, :model1, :sn, :store))
  end

end

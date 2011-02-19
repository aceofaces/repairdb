class RepairsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :device, [:new, :create]

  def index
   hobo_index Repair.apply_scopes(:search => [params[:search],:device,:ticket], :joins=>:device, :order_by => parse_sort_param(:device, :date, :origin, :ticket))
  end


end

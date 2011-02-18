class StoresController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
   hobo_index Store.apply_scopes(:search => [params[:search],:name,:tz,:zip,:state,:city], :order_by => parse_sort_param(:name, :tz, :city, :state, :zip))
  end

end

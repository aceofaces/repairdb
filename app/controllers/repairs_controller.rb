class RepairsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :device, [:new, :create]

end

# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Repairdb::Application.routes.draw do


  # Resource routes for controller "repairs"
  get 'repairs(.:format)' => 'repairs#index', :as => 'repairs'
  get 'repairs/new(.:format)', :as => 'new_repair'
  get 'repairs/:id/edit(.:format)' => 'repairs#edit', :as => 'edit_repair'
  get 'repairs/:id(.:format)' => 'repairs#show', :as => 'repair', :constraints => { :id => %r([^/.?]+) }
  post 'repairs(.:format)' => 'repairs#create', :as => 'create_repair'
  put 'repairs/:id(.:format)' => 'repairs#update', :as => 'update_repair', :constraints => { :id => %r([^/.?]+) }
  delete 'repairs/:id(.:format)' => 'repairs#destroy', :as => 'destroy_repair', :constraints => { :id => %r([^/.?]+) }

  # Owner routes for controller "repairs"
  get 'devices/:device_id/repairs/new(.:format)' => 'repairs#new_for_device', :as => 'new_repair_for_device'
  post 'devices/:device_id/repairs(.:format)' => 'repairs#create_for_device', :as => 'create_repair_for_device'


  # Lifecycle routes for controller "users"
  put 'users/:id/accept_invitation(.:format)' => 'users#do_accept_invitation', :as => 'do_user_accept_invitation'
  get 'users/:id/accept_invitation(.:format)' => 'users#accept_invitation', :as => 'user_accept_invitation'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'


  # Resource routes for controller "devices"
  get 'devices(.:format)' => 'devices#index', :as => 'devices'
  get 'devices/new(.:format)', :as => 'new_device'
  get 'devices/:id/edit(.:format)' => 'devices#edit', :as => 'edit_device'
  get 'devices/:id(.:format)' => 'devices#show', :as => 'device', :constraints => { :id => %r([^/.?]+) }
  post 'devices(.:format)' => 'devices#create', :as => 'create_device'
  put 'devices/:id(.:format)' => 'devices#update', :as => 'update_device', :constraints => { :id => %r([^/.?]+) }
  delete 'devices/:id(.:format)' => 'devices#destroy', :as => 'destroy_device', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "stores"
  get 'stores(.:format)' => 'stores#index', :as => 'stores'
  get 'stores/new(.:format)', :as => 'new_store'
  get 'stores/:id/edit(.:format)' => 'stores#edit', :as => 'edit_store'
  get 'stores/:id(.:format)' => 'stores#show', :as => 'store', :constraints => { :id => %r([^/.?]+) }
  post 'stores(.:format)' => 'stores#create', :as => 'create_store'
  put 'stores/:id(.:format)' => 'stores#update', :as => 'update_store', :constraints => { :id => %r([^/.?]+) }
  delete 'stores/:id(.:format)' => 'stores#destroy', :as => 'destroy_store', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "organizations"
  get 'organizations(.:format)' => 'organizations#index', :as => 'organizations'
  get 'organizations/new(.:format)', :as => 'new_organization'
  get 'organizations/:id/edit(.:format)' => 'organizations#edit', :as => 'edit_organization'
  get 'organizations/:id(.:format)' => 'organizations#show', :as => 'organization', :constraints => { :id => %r([^/.?]+) }
  post 'organizations(.:format)' => 'organizations#create', :as => 'create_organization'
  put 'organizations/:id(.:format)' => 'organizations#update', :as => 'update_organization', :constraints => { :id => %r([^/.?]+) }
  delete 'organizations/:id(.:format)' => 'organizations#destroy', :as => 'destroy_organization', :constraints => { :id => %r([^/.?]+) }

  namespace :admin do


    # Lifecycle routes for controller "admin/users"
    post 'users/invite(.:format)' => 'users#do_invite', :as => 'do_user_invite'
    get 'users/invite(.:format)' => 'users#invite', :as => 'user_invite'

    # Resource routes for controller "admin/users"
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  end

end

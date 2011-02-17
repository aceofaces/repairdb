class Store < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name         :string, :required
    phone        :string, :required
    tz           :string, :required
    contact      :string
    address1     :string, :required
    address2     :string
    city         :string, :required
    state        :string, :required
    zip          :string, :required
    timestamps
  end

  has_many :devices#, :through => :device_assignments
#  has_many :device_assignments, :dependent => :destroy
  belongs_to :organization

  children :devices

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end

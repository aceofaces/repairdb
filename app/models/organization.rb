class Organization < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name    :string, :required, :unique
    phone   :string, :required
    contact :string
    email   :string
    timestamps
  end

  has_many :stores#, :through => :store_assignments
#  has_many :store_assignments, :dependent => :destroy

  children :stores

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

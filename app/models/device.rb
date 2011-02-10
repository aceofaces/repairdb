class Device < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    make     :string, :required
    model1   :string, :required
    sn       :string, :required
    notes    :text
    warranty :string
    status   :string
    timestamps
  end

  def name
      make + " " + model1 + " " + sn
  end 

  has_many :repairs#, :through => :repair_assignments
 # has_many :repair_assignments, :dependent => :destroy
  belongs_to :store
  validates_presence_of :store
  belongs_to :organization
  validates_presence_of :organization

  children :repairs

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

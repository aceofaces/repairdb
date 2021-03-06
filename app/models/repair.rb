class Repair < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    device  :string, :required
    date    :date, :required
    store   :string, :required
    ticket  :string, :required
    problem :text
    work    :text
    notes   :text
    status  enum_string(:Ready_To_Deploy, :Internal_Use_Only, :Awaiting_Repair, :Scrap)
    timestamps
  end

  def name
    "Repair from " + store + " for ticket # " + ticket
  end

  belongs_to :device
  validates_presence_of :device

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

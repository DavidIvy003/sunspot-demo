class Product < ActiveRecord::Base
  STATE_ACTIVE   = 'ACTIVE'
  STATE_INACTIVE = 'INACTIVE'
  STATE_EXPIRED  = 'EXPIRED'

  searchable do
    text :name, boost: 5
    text :features, boost: 2
    text :description
    # string :state
    boolean :searchable
    integer :price
  end

  scope :active, -> { where(state: STATE_ACTIVE) }

  def searchable
    state == STATE_ACTIVE || state == STATE_EXPIRED
  end
end
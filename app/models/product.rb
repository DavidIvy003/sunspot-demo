class Product < ActiveRecord::Base
  STATE_ACTIVE = 'ACTIVE'
  STATE_INACTIVE = 'INACTIVE'

  scope :active, -> { where(state: STATE_ACTIVE) }
end
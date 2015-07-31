class Product < ActiveRecord::Base
  STATE_ACTIVE = 'ACTIVE'
  STATE_INACTIVE = 'INACTIVE'

  searchable do
    text :name, :description, :features
  end

  scope :active, -> { where(state: STATE_ACTIVE) }
end
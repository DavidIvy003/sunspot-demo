class Product < ActiveRecord::Base
  STATE_ACTIVE = 'ACTIVE'
  STATE_INACTIVE = 'INACTIVE'

  searchable do
    text :name, boost: 5
    text :features, boost: 2
    text :description
    string :state
  end

  scope :active, -> { where(state: STATE_ACTIVE) }
end
class Dojo < ActiveRecord::Base
  has_many :ninjas, dependant: :destroy
  validates :name, :city, :state, presence: true
  validates :state, length: {is:2}
end

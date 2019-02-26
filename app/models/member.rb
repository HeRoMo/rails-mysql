class Member < ApplicationRecord
  after_create ->{reload}
  has_and_belongs_to_many :tasks
end

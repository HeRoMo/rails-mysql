class Member < ApplicationRecord
  include IdGenerator

  has_and_belongs_to_many :tasks
end

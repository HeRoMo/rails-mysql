class Project < ApplicationRecord
  include IdGenerator

  has_many :tasks
end

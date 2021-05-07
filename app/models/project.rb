class Project < ApplicationRecord
  belongs_to :board
  belongs_to :user
  has_many :tasks, dependent: :delete_all
end

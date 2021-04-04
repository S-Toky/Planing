class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: {in: ["not-started", "in-progress", "complete"]}

  STATUS_OPTION = [
    ["Not started", "not-started"],
    ["In progress", "in-progress"],
    ["Complete", "complete"]
  ]
end

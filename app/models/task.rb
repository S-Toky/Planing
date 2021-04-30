class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: {in: ["not-started", "in-progress", "complete"]}

  STATUS_OPTION = [
    ["Not started", "not-started"],
    ["In progress", "in-progress"],
    ["Complete", "complete"]
  ]

  def badge_color
    case status
    when "not-started"
      'primary'
    when "in-progress"
      'info'
    when "complete"
      'success'
    end
  end
  
end

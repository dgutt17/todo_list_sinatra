class Todo < ActiveRecord::Base
  validates_presence_of :title, :due_date
end